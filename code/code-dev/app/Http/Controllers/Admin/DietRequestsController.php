<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Http\Models\Diet, App\Http\Models\Bitacora, App\Http\Models\Journey, App\Http\Models\Service,  App\Http\Models\DietRequest, App\Http\Models\DietRequestDetail;
use Carbon\Carbon, Auth, Validator, Str, Config, Session, DB, Response, File, Image, PDF;

class DietRequestsController extends Controller
{
    public function __Construct(){
        $this->middleware('auth');
        $this->middleware('IsAdmin');
        $this->middleware('UserStatus');
        $this->middleware('Permissions'); 
    }

    public function getHome($status){    
        
        switch ($status) {
            case '0':
                $diet_requests = DietRequest::where('status', '0')->orderBy('id', 'Asc')->get();
            break;

            case '1':
                $diet_requests = DietRequest::where('status', '1')->orderBy('id', 'Asc')->get();
            break;

            case 'all':
                $diet_requests = DietRequest::orderby('id','Asc')->get();
            break;

            case 'trash':
                $diet_requests = DietRequest::onlyTrashed()->orderBy('id', 'Asc')->get();
            break;
        }

        $data = [
            'diet_requests' => $diet_requests
        ];

    	return view('admin.diet_request.home', $data);
    }

    public function getDietRequestAdd(){
        
        $journeys = Journey::get();
        $diets = Diet::pluck('name','id');
        $services = Service::where('type','1')
            ->where('unit_id', '1')
            ->get();
        $user = Auth::user()->name.' '.Auth::user()->lastname;
        
        $data = [
            'journeys' => $journeys,
            'diets' => $diets,
            'services' => $services,
            'user' => $user
        ];

    	return view('admin.diet_request.add', $data);
    }

    public function postDietRequestAdd(Request $request){
        $rules = [

            'idjourney' => 'required'
        ];

        $messages = [

            'idjourney.required' => 'Se requiere que seleccione la jornada de la solicitud a realizar.'
        ];

        $validator = Validator::make($request->all(),$rules,$messages);

        if($validator->fails()):
            return back()->withErrors($validator)->with('messages', '¡Se ha producido un error!.')
            ->with('typealert', 'danger')->withInput();
        else:
            
            $jornada = Journey::findOrFail($request->get('idjourney'));
            $hora_actual = Carbon::now()->format('H:i:s');
            //return $hora_actual;

            if($hora_actual >= $jornada->start_time && $hora_actual <= $jornada->end_time):
                DB::beginTransaction();

                $ingreso = new DietRequest;
                $ingreso->id=$request->get('id');
                $ingreso->idjourney =$request->get('idjourney');
                $ingreso->idapplicant = Auth::user()->id;
                $ingreso->idapplicant_service=$request->get('idservice');
                $ingreso->status = "0";
                $ingreso->save();

                $idarticulo=$request->get('idarticulo');
                $cantidad=$request->get('cantidad');
                $especificar=$request->get('especificar');

                $cont=0;

                while ($cont<count($idarticulo)) {
                    $detalle=new DietRequestDetail();
                    $detalle->iddiet_request=$ingreso->id;
                    $detalle->iddiet=$idarticulo[$cont];
                    $detalle->bed_number=$cantidad[$cont];
                    $detalle->specify=$especificar[$cont];
                    $detalle->save();
                    $cont=$cont+1;
                }

                $ingreso->total_diets = $cont;

                DB::commit();


                if($ingreso->save()):
                    $b = new Bitacora;
                    $b->action = "Registro de solucitud de dietas. ";
                    $b->user_id = Auth::id();
                    $b->save();

                    return redirect('/admin/diet_requests/0')->with('messages', '¡Solicitud registrada y guardada con exito!.')
                        ->with('typealert', 'success');
                endif;
            else:
                return back()->with('messages', '¡El tiempo de alimentación seleccionado está fuera del horario de solicitud establecido!.')
                        ->with('typealert', 'warning');

            endif;

            


        endif;

    }

    public function getDietRequestView($id){
        $diet_request = DietRequest::findOrFail($id);
        $iddiet_request = $diet_request->id;
        $details = DietRequestDetail::where('iddiet_request', $iddiet_request)->get();
        

        $data = [
            'diet_request' => $diet_request,
            'details' => $details
        ];

        return view('admin.diet_request.view', $data);
    }

    public function getDietRequestPdf($id){
        $diet_request = DietRequest::findOrFail($id);
        $iddiet_request = $diet_request->id;
        $details = DietRequestDetail::where('iddiet_request', $iddiet_request)->get();

        $subtotales = DB::table('diet_request_details')
                 ->select('iddiet', DB::raw('count(iddiet) as subtotal'))
                 ->where('iddiet_request', $iddiet_request)
                 ->groupBy('iddiet')
                 ->get();    
                 
        

        $data = [
            'diet_request' => $diet_request,
            'details' => $details,
            'subtotales' => $subtotales
        ];

        $pdf = PDF::loadView('admin.diet_request.print',$data)->setPaper('a4', 'portrait');
        return $pdf->stream('ING-7.pdf');
    }
}
