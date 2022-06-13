@extends('admin.master')
@section('title','Agregar')

@section('breadcrumb')
    <li class="breadcrumb-item">
        <a href="{{ url('/admin/kardex/all') }}" class="nav-link"><i class="fas fa-server"></i> Solicitud de Dietas</a>
    </li>
    <li class="breadcrumb-item">
        <a href="{{ url('/admin/kardex/income/add') }}" class="nav-link"><i class="fas fa-plus-circle"></i> Registrar Nueva Solicitud</a>
    </li>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="panel shadow">

            <div class="header">
                <h2 class="title"><i class="fas fa-plus-circle"></i> <strong> Registrar Nueva Solicitud</strong></h2>
            </div>

            <div class="inside">
                {!!Form::open(array('url'=>'/admin/solicitud_dieta/solicitar','method'=>'POST', 'autocomplete'=>'off'))!!}
                {{Form::token()}}

                <div class="row">
                    <div class="col-md-12">
                        <label for="idsupplier"><strong> Jornada: </strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                            <select name="idjourney" id="idsupplier" style="width: 96%" >
                                @foreach ($journeys as $j)
                                    <option value=""></option>
                                    <option value="{{$j->id}}">{{$j->name.' '.$j->start_time.' - '.$j->end_time}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 mtop16">
                        <label for="name"><strong> Solicitante: </strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-keyboard"></i></span>
                            {!! Form::text('name', $user, ['class'=>'form-control', 'readonly']) !!}
                        </div>
                    </div>

                    <div class="col-md-6 mtop16">
                        <label for="type_doc"><strong> Servicio: </strong></label>
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                            <select name="idservice" id="idservice" style="width: 92%" >
                                @foreach ($services as $s)
                                    <option value=""></option>
                                    <option value="{{$s->id}}">{{$s->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    
                </div>

                    <div class="row">
                        <div class="col-md-6 mtop16">
                            <label><strong> Dieta: </strong></label>
                            <div class="input-group">                                
                                <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                                {!! Form::select('pidarticulo', $diets, null,['class'=>'form-select', 'id' => 'pidarticulo']) !!}
                                
                            </div>
                        </div>

                        <div class="col-md-5 mtop16" id="div-cantidad">
                            <label for="cantidad"><strong> Número de Cama: </strong></label>
                            <div class="input-group">                                
                                <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                                {!! Form::number('pcantidad', null, ['class'=>'form-control', 'id' => 'pcantidad']) !!}
                            </div>
                        </div>

                        <div class="col-md-5 mtop16" id="div-especificar">
                            <label for="cantidad"><strong> Especificar: </strong></label>
                            <div class="input-group">                                
                                <span class="input-group-text" id="basic-addon1"><i class="fas fa-layer-group"></i></span>
                                {!! Form::text('pespecificar', null, ['class'=>'form-control', 'id' => 'pespecificar']) !!}
                            </div>
                        </div>

                        <div class="col-md-1" style="margin-top: 48px;">
                        <div class="form-group">
                            <button type="button" id="bt_add" class="btn btn-primary">
                                Agregar
                            </button>
                        </div>
                    </div>

                    <div class="card-body table-responsive">
                        <table id="detalles" class= "table table-striped table-bordered table-condensed table-hover">
                            <thead style="background-color: #c3f3ea">
                                <th><strong> ELIMINAR </strong></th>
                                <th><strong> DIETA </strong></th>
                                <th><strong> CAMA </strong></th>
                                <th><strong> ESPECIFICAR </strong></th>
                            </thead>

                            <tbody>

                            </tbody>
                        </table>
                    </div>

                    <div class=" col-md-6 " id="guardar">
                        <div class="form-group">
                            <input name="_token" value="{{ csrf_token() }}" type="hidden"></input>
                            <button class="btn btn-primary" type="submit"> Guardar </button>
                            <button class="btn btn-danger" type="reset"> Cancelar </button>
                        </div>
                    </div>


                {!!Form::close()!!}
            </div>

        </div>
    </div>

    <script>

        $(document).ready(function(){
            $('#bt_add').click(function(){
            agregar();
            });

            var typediet = document.getElementById('pidarticulo');         
            console.log(typediet.value);
            var bed = document.getElementById('div-cantidad');
            var especificar = document.getElementById('div-especificar');
            bed.hidden = false;
            especificar.hidden = true;

            $('#pidarticulo').click(function(){
                if(typediet.value  == 17){
                    bed.hidden = true;
                    especificar.hidden = false;
                }else{
                    bed.hidden = false;
                    especificar.hidden = true;                    
                }

                
            });
        });


        var cont=0;
        total=0;
        subtotal=[];
        $("#guardar").hide();

        function agregar(){
            
            idarticulo=$("#pidarticulo").val();
            articulo=$("#pidarticulo option:selected").text();
            cantidad=$("#pcantidad").val();
            especificar= $("#pespecificar").val();

            if (idarticulo!=""){
                var fila='<tr class="selected" id="fila'+cont+'"><td><button type="button" class="btn btn-warning" onclick="eliminar('+cont+');">X</button></td><td><input type="hidden" name="idarticulo[]" value="'+idarticulo+'">'+articulo+'</td><td><input type="hidden" name="cantidad[]" value="'+cantidad+'">'+cantidad+'</td><td><input type="hidden" name="especificar[]" value="'+especificar+'">'+especificar+'</td></tr>';
                cont++;
                limpiar();
                evaluar();
                $('#detalles').append(fila);
            }else{
                alert("Error al ingresar el detalle del ingreso, revise los datos de la dieta")
            }
        }

        function limpiar(){
            $("#pcantidad").val("");
            $("#pespecificar").val("");
        }

        function evaluar()
        {
            if (cont >0){
                $("#guardar").show();
            }else{
                $("#guardar").hide();
            }
        }

        function eliminar(index){
            $("#fila" + index).remove();
            evaluar();
        }

    </script>

@endsection