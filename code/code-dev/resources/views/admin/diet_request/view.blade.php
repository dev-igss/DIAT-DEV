@extends('admin.master')
@section('title','Detalles de Solicitud')

@section('breadcrumb')
    <li class="breadcrumb-item">
        <a href="{{ url('/admin/diet_requests/0') }}" class="nav-link"><i class="fas fa-server"></i> Solicitud de Dietas</a>
    </li>
    <li class="breadcrumb-item">
        <a href="{{ url('/admin/diet_request/view') }}" class="nav-link"><i class="fas fa-plus-circle"></i> Detalles de Solicitud</a>
    </li>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="panel shadow">

            <div class="header">
                <h2 class="title"><i class="fas fa-clipboard-list"></i> <strong> Detalle de la Solicitud</strong></h2>
                <ul>
                    @if(kvfj(Auth::user()->permissions, 'user_add'))
                        <li>
                            <a href="{{ url('/admin/solicitud_dieta/'.$diet_request->id.'/imprimir') }}" target="_blank"><i class="fa fa-print"></i> Imprimir</a>
                        </li>
                    @endif
                </ul>
            </div>

            <div class="inside">

                <div class="row">
                    <div class="col-md-12">
                        <label for="idsupplier"><strong>Jornada:</strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                            {!! Form::text('no_doc', $diet_request->journey->name, ['class'=>'form-control', 'readonly']) !!}
                        </div>
                    </div>

                    <div class="col-md-4 mtop16">
                        <label for="type_doc"><strong>Servicio Solicitante:</strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                            {!! Form::text('no_doc', $diet_request->service->name, ['class'=>'form-control', 'readonly']) !!}
                            
                        </div>
                    </div>

                    <div class="col-md-4 mtop16">
                        <label for="name"><strong>Solicitado Por:</strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-keyboard"></i></span>
                            {!! Form::text('no_doc',' IBM: '.$diet_request->user->ibm.' - '.$diet_request->user->name.' '.$diet_request->user->lastname, ['class'=>'form-control', 'readonly']) !!}
                        </div>
                    </div>     
                    
                    <div class="col-md-4 mtop16">
                        <label for="name"><strong>Fecha y Hora Solicitud:</strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-keyboard"></i></span>
                            {!! Form::text('no_doc',$diet_request->created_at, ['class'=>'form-control', 'readonly']) !!}
                        </div>
                    </div>  
                </div>

                <div class="row">
                    <div class="col-md-12 mtop16">
                
                        <table class="table table-striped table-hover" >
                            <thead>
                                <tr>
                                    <th><strong> DIETA </strong></th>
                                    <th><strong> CAMA </strong></th>
                                    <th><strong> ESPECIFICAR </strong></th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                @foreach($details as $detail)
                                    <tr>
                                        <th>{{ $detail->diet->name }}</th>
                                        <th>{{ $detail->bed_number }}</th>
                                        <th>{{ $detail->specify }}</th>
                                    </tr>
                                    
                                @endforeach
                                <tr>
                                    <td colspan="2"></td>
                                    <td><strong>TOTAL DIETAS: </strong>{{ count($details) }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>

@endsection