@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('voyager::generic.'.(!is_null($dataTypeContent->getKey()) ? 'edit' : 'add')).' '.$dataType->display_name_singular)

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.(!is_null($dataTypeContent->getKey()) ? 'edit' : 'add')).' '.$dataType->display_name_singular }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <!-- form start -->
        <form role="form"
            class="form-edit-add"
            action="@if(!is_null($dataTypeContent->getKey())){{ route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.'.$dataType->slug.'.store', ['avaluo' => Request::get('avaluo_id')]) }}@endif"
            method="POST" enctype="multipart/form-data">
        <!-- PUT Method if we are editing -->
        @if(!is_null($dataTypeContent->getKey()))
            {{ method_field("PUT") }}
        @endif

        <!-- CSRF TOKEN -->
        {{ csrf_field() }}

            <div class="row">
                
                <div class="col-sm-8">
                    <!-- ### Informes Valoraciones ### -->
                    <div class="panel panel-bordered panel-info">

                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="icon wb-image"></i>Informe de Valoración</h3>
                                <div class="panel-actions">
                                    <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                                </div>
                            </div>
                        
                            <div class="panel-body">

                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                
                                <!-- Adding / Editing -->
                                @php
                                    $dataTypeRows = $dataType->{(!is_null($dataTypeContent->getKey()) ? 'editRows' : 'addRows' )};
                                @endphp
                                
                                @foreach($dataTypeRows as $row)
                                    <!-- GET THE DISPLAY OPTIONS -->
                                    @php
                                        $options = json_decode($row->details);
                                        $display_options = isset($options->display) ? $options->display : NULL;
                                    @endphp
                                    @if ($options && isset($options->legend) && isset($options->legend->text))
                                        <legend class="text-{{$options->legend->align or 'center'}}" style="background-color: {{$options->legend->bgcolor or '#f0f0f0'}};padding: 5px;">{{$options->legend->text}}</legend>
                                    @endif
                                    @if ($options && isset($options->formfields_custom))
                                        @include('voyager::formfields.custom.' . $options->formfields_custom)
                                    @else
                                        <div class="form-group @if($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width or 12 }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                            {{ $row->slugify }}
                                            <label for="name">{{ $row->display_name }}</label>
                                            @include('voyager::multilingual.input-hidden-bread-edit-add')
                                            @if($row->type == 'relationship')
                                                @include('voyager::formfields.relationship')
                                            @else
                                                {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                            @endif

                                            @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                                {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                            @endforeach
                                        </div>
                                    @endif
                                @endforeach

                            </div><!-- panel-body -->
                    </div>

                    <!-- ### Componentes de la Obra ### -->
                    <div class="panel panel-bordered panel-primary">

                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-image"></i> Componentes de la Obra</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>

                        <div class="panel-body">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <div class="table-repsonsive">
                                <span id="error"></span>
                                <table class="table table-bordered" id="item_componentes">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>%f</th>
                                        <th>Costo Fuente</th>
                                        <th>Costo Depreciado</th>
                                        <th>% Costo Depreciado</th>
                                        <th>Costo Ajustado</th>
                                        <th>% Costo Ajustado</th>
                                        <th><button type="button" id="add_componente_obra" class="btn btn-success btn-sm add"><span class="glyphicon glyphicon-plus"></span> Agregar</button></th>
                                    </tr>
                                    @foreach ($componentes_list as $row)
                                        <tr>
                                            <td><input type="text"   name="item_componente[nombre][]" class="form-control" placeholder="Nombre" value="{{$row->nombre}}"/></td>
                                            <td><input type="number" name="item_componente[valor_f][]" class="form-control" placeholder="%f" value="{{$row->valor_f}}"/></td>
                                            <td><input type="number" name="item_componente[costo_fuente][]" class="form-control" placeholder="Costo Fuente" value="{{$row->costo_fuente}}"/></td>

                                            <td><input type="number" name="item_componente[costo_depreciado_componente][]" class="form-control" placeholder="Costo Depreciado" value="{{$row->costo_depreciado_componente}}" disabled/></td>
                                            <td><input type="number" name="item_componente[porcentaje_costo_fuente][]" class="form-control" placeholder="% Costo Depreciado" value="{{$row->porcentaje_costo_fuente}}" disabled/></td>
                                            <td><input type="number" name="item_componente[costo_ajustado][]" class="form-control" placeholder="Costo Ajustado" value="{{$row->costo_ajustado}}" disabled/></td>
                                            <td><input type="number" name="item_componente[porcentaje_costo_ajustado][]" class="form-control" placeholder="% Costo Ajustado" value="{{$row->porcentaje_costo_ajustado}}" disabled/></td>
                                            <td><button type="button" name="remove" class="btn btn-danger btn-sm remove_componente_obra"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td>
                                        </tr>                
                                     @endforeach

                                </table>

                            </div>

                        </div><!-- panel-body -->

                    </div>

                    <!-- ### Construcciones ### -->
                    <div class="panel panel-bordered panel-primary">

                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-image"></i> Construcciones</h3>
                            <div class="panel-actions">
                                <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>

                        <div class="panel-body">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <div class="table-repsonsive">
                                <span id="error"></span>
                                <table class="table table-bordered" id="item_construcciones">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Tipo</th>
                                        <th>Subtitulo</th>
                                        <th>C</th>
                                        <th>A</th>
                                        <th>e%</th>
                                        <th>k%</th>
                                        <th><button type="button" id="add_construccion" class="btn btn-success btn-sm add"><span class="glyphicon glyphicon-plus"></span> Agregar</button></th>
                                    </tr>

                                </table>

                            </div>

                        </div><!-- panel-body -->

                    </div>

                </div>
                <div class="col-sm-4">
                    <!-- ### Informes Inspectores ### -->
                    <div class="panel panel-bordered panel-primary">

                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="icon wb-image"></i>Inspectores</h3>
                                <div class="panel-actions">
                                    <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                                </div>
                            </div>
                        
                            <div class="panel-body">

                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif

                                <!-- Old -->
                                <div class="form-group  col-md-12">

                                    <label for="name">¿Es un nuevo inspector?</label>
                                    <select class="form-control select2 select2-hidden-accessible" id="new_inspector"  name="new_inspector" tabindex="-1" aria-hidden="true" data-dependent="old_inspector">
                                        <option value="true">Si, agregar nuevo inspector</option>                       
                                        <option value="false">No, ya existe</option>   
                                    </select>
                                </div>

                                <div class="form-group  col-md-12 hidden" id="new_inspector2">
                                    <label for="name">Inspectores</label>
                                    <select class="form-control select2 select2-hidden-accessible" id="old_inspector" name="old_inspector" tabindex="-1" aria-hidden="true">
                                        <option value="">Selecciona un inspector</option>
                                    </select>
                                </div>

                                <div id="new_inspector3">

                                <!-- Adding / Editing -->
                                @php
                                    $dataTypeRows = $dataType2->{(!is_null($dataTypeContent2->getKey()) ? 'editRows' : 'addRows' )};
                                @endphp

                                @foreach($dataTypeRows as $row)
                                    <!-- GET THE DISPLAY OPTIONS -->
                                    @php
                                        $options = json_decode($row->details);
                                        $display_options = isset($options->display) ? $options->display : NULL;
                                    @endphp
                                    @if ($options && isset($options->legend) && isset($options->legend->text))
                                        <legend class="text-{{$options->legend->align or 'center'}}" style="background-color: {{$options->legend->bgcolor or '#f0f0f0'}};padding: 5px;">{{$options->legend->text}}</legend>
                                    @endif
                                    @if ($options && isset($options->formfields_custom))
                                        @include('voyager::formfields.custom.' . $options->formfields_custom)
                                    @else
                                        <div class="form-group @if($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width or 12 }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                            {{ $row->slugify }}
                                            <label for="name">{{ $row->display_name }}</label>
                                            @include('voyager::multilingual.input-hidden-bread-edit-add')
                                            @if($row->type == 'relationship')
                                                @include('voyager::formfields.relationship')
                                            @else
                                                {!! app('voyager')->formField($row, $dataType2, $dataTypeContent2) !!}
                                            @endif

                                            @foreach (app('voyager')->afterFormFields($row, $dataType2, $dataTypeContent2) as $after)
                                                {!! $after->handle($row, $dataType2, $dataTypeContent2) !!}
                                            @endforeach
                                        </div>
                                    @endif
                                @endforeach
                                </div>
                            </div><!-- panel-body -->
                    </div>

                    <!-- ### Informes Bienes ### -->
                    <div class="panel panel-bordered panel-warning">

                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="icon wb-image"></i>Bienes</h3>
                                <div class="panel-actions">
                                    <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                                </div>
                            </div>
                        
                            <div class="panel-body">

                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif

                                <!-- Adding / Editing -->
                                @php
                                    $dataTypeRows3 = $dataType3->{(!is_null($dataTypeContent3->getKey()) ? 'editRows' : 'addRows' )};
                                @endphp

                                @foreach($dataTypeRows3 as $row)
                                    <!-- GET THE DISPLAY OPTIONS -->
                                    @php
                                        $options = json_decode($row->details);
                                        $display_options = isset($options->display) ? $options->display : NULL;
                                    @endphp
                                    @if ($options && isset($options->legend) && isset($options->legend->text))
                                        <legend class="text-{{$options->legend->align or 'center'}}" style="background-color: {{$options->legend->bgcolor or '#f0f0f0'}};padding: 5px;">{{$options->legend->text}}</legend>
                                    @endif
                                    @if ($options && isset($options->formfields_custom))
                                        @include('voyager::formfields.custom.' . $options->formfields_custom)
                                    @else
                                        <div class="form-group @if($row->type == 'hidden') hidden @endif col-lg-{{ $display_options->width or 12 }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                            {{ $row->slugify }}
                                            <label for="name">{{ $row->display_name }}</label>
                                            @include('voyager::multilingual.input-hidden-bread-edit-add')
                                            @if($row->type == 'relationship')
                                                @include('voyager::formfields.relationship')
                                            @else
                                                {!! app('voyager')->formField($row, $dataType3, $dataTypeContent3) !!}
                                            @endif

                                            @foreach (app('voyager')->afterFormFields($row, $dataType3, $dataTypeContent3) as $after)
                                                {!! $after->handle($row, $dataType3, $dataTypeContent3) !!}
                                            @endforeach
                                        </div>
                                    @endif
                                @endforeach

                            </div><!-- panel-body -->
                    </div>

                    <!-- ### Informes Edificaciones ### -->
                    <div class="panel panel-bordered panel-warning">

                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="icon wb-image"></i>Edificaciones</h3>
                                <div class="panel-actions">
                                    <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                                </div>
                            </div>
                        
                            <div class="panel-body">

                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif

                                <!-- Adding / Editing -->
                                @php
                                    $dataTypeRows = $dataType4->{(!is_null($dataTypeContent4->getKey()) ? 'editRows' : 'addRows' )};
                                @endphp

                                @foreach($dataTypeRows as $row)
                                    <!-- GET THE DISPLAY OPTIONS -->
                                    @php
                                        $options = json_decode($row->details);
                                        $display_options = isset($options->display) ? $options->display : NULL;
                                    @endphp
                                    @if ($options && isset($options->legend) && isset($options->legend->text))
                                        <legend class="text-{{$options->legend->align or 'center'}}" style="background-color: {{$options->legend->bgcolor or '#f0f0f0'}};padding: 5px;">{{$options->legend->text}}</legend>
                                    @endif
                                    @if ($options && isset($options->formfields_custom))
                                        @include('voyager::formfields.custom.' . $options->formfields_custom)
                                    @else
                                        <div class="form-group @if($row->type == 'hidden') hidden @endif col-lg-{{ $display_options->width or 12 }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                            {{ $row->slugify }}
                                            <label for="name">{{ $row->display_name }}</label>
                                            @include('voyager::multilingual.input-hidden-bread-edit-add')
                                            @if($row->type == 'relationship')
                                                @include('voyager::formfields.relationship')
                                            @else
                                                {!! app('voyager')->formField($row, $dataType4, $dataTypeContent4) !!}
                                            @endif

                                            @foreach (app('voyager')->afterFormFields($row, $dataType4, $dataTypeContent4) as $after)
                                                {!! $after->handle($row, $dataType4, $dataTypeContent4) !!}
                                            @endforeach
                                        </div>
                                    @endif
                                @endforeach

                            </div><!-- panel-body -->
                    </div>
                    
                </div>


            </div>
        
        <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>

        @include('partials.navegabilidad');

        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
            <input name="image" id="upload_file" type="file"
                    onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
            {{ csrf_field() }}
        </form>
    </div>

    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}</h4>
                </div>

                <div class="modal-body">
                    <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                    <button type="button" class="btn btn-danger" id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Delete File Modal -->


@stop

@section('javascript')
    <script>
        var params = {}
        var $image

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.type != 'date' || elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', function (e) {
                e.preventDefault();
                $image = $(this).siblings('img');

                params = {
                    slug:   '{{ $dataType->slug }}',
                    image:  $image.data('image'),
                    id:     $image.data('id'),
                    field:  $image.parent().data('field-name'),
                    _token: '{{ csrf_token() }}'
                }

                $('.confirm_delete_name').text($image.data('image'));
                $('#confirm_delete_modal').modal('show');
            });

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $image.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing image.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();


            //Cuando pregunta si es nuevo inspector
            $("#new_inspector").change(function(){
                var valor = $(this).val();
                //alert("s: " + valor );

                if (valor == "true"){
                    //alert("s: " + valor );
                    $("#new_inspector2").addClass("hidden");
                    $("#new_inspector3").removeClass("hidden");
                }else{
                    $("#new_inspector2").removeClass("hidden");
                    $("#new_inspector3").addClass("hidden");

                    //Peticion AJAX para consultar solicitantes registrados
                    var dependent = $(this).data('dependent');
                    var _token = $('input[name="_token"]').val();
                    
                    $.ajax({
                        url:"/inspectores/fetchOldInspectores",
                        method:"POST",
                        data:{_token:_token},
                        success:function(result) {

                            $('#'+dependent).html(result);
                        }
                    })
                }
            });


            //To do list 
            //1. Agregar Componentes Obra
            $(document).on('click', '#add_componente_obra', function(){
                var html = '';
                html += `<tr>
                <td><input type="text"   name="item_componente[nombre][]" class="form-control" placeholder="Nombre"/></td>
                <td><input type="number" name="item_componente[valor_f][]" class="form-control" placeholder="%f" /></td>
                <td><input type="number" name="item_componente[costo_fuente][]" class="form-control" placeholder="Costo Fuente"/></td>
                <td><input type="number" name="item_componente[costo_depreciado_componente][]" class="form-control" placeholder="Costo Depreciado" disabled/></td>
                <td><input type="number" name="item_componente[porcentaje_costo_fuente][]" class="form-control" placeholder="% Costo Depreciado" disabled/></td>
                <td><input type="number" name="item_componente[costo_ajustado][]" class="form-control" placeholder="Costo Ajustado" disabled/></td>
                <td><input type="number" name="item_componente[porcentaje_costo_ajustado][]" class="form-control" placeholder="% Costo Ajustado" disabled/></td>       
                <td><button type="button" name="remove" class="btn btn-danger btn-sm remove_componente_obra"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td></tr>`;
                $('#item_componentes').append(html);
            });
            //2. Borrar
            $(document).on('click', '.remove_componente_obra', function(){
                $(this).closest('tr').remove();
            });
            
            //1. Agregar Construcción
            $(document).on('click', '#add_construccion', function(){

                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url:"/construcciones/new",
                    method:"GET",
                    data:{_token:_token, new: true, informe_valoracion_id: @json($dataTypeContent->id)},
                    success:function(result) {
                        $('#item_construcciones').append(result);
                    }
                })

            });
            //2. Borrar Construcción
            $(document).on('click', '.remove_construccion', function(){
                $(this).closest('tr').remove();
            });

            //3. Consultamos las Construccion para editar AJAX
            var _token = $('input[name="_token"]').val();
                $.ajax({
                    url:"/construcciones/new",
                    method:"GET",
                    data:{_token:_token, new: false, informe_valoracion_id: @json($dataTypeContent->id)},
                    success:function(result) {
                        $('#item_construcciones').append(result);
                    }
                })
        });
    </script>
@stop