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
                                    $dataTypeRows = $dataType3->{(!is_null($dataTypeContent3->getKey()) ? 'editRows' : 'addRows' )};
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
                                        <div class="form-group @if($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width or 12 }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
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
                <div class="col-sm-8">
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
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>%f</th>
                                        <th>Costo Fuente</th>
                                        <th>Costo Depreciado</th>
                                        <th>% Costo Depreciado</th>
                                        <th>Costo Ajustado</th>
                                        <th>% Costo Ajustado</th>
                                        <th><button type="button" id="add_componente_obra" class="btn btn-success btn-sm add"><span class="glyphicon glyphicon-plus"></span> Agregar</button></th>
                                    </tr>

                                </table>

                            </div>

                        </div><!-- panel-body -->

                    </div>

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

            //To do list 
            var num_comp = 1;
            //1. Agregar Componentes Obra
            $(document).on('click', '#add_componente_obra', function(){
                var html = '';
                html += '<tr>';
                html += '<td><input type="number" name="item_componente_id" class="form-control" value="'+num_comp+'" disabled/></td>';
                html += '<td><input type="text"   name="item_componente[nombre][]" class="form-control" placeholder="Nombre"/></td>';
                html += '<td><input type="number" name="item_componente[valor_f][]" class="form-control" placeholder="%f" /></td>';
                html += '<td><input type="number" name="item_componente[costo_fuente][]" class="form-control" placeholder="Costo Fuente"/></td>'; 
                html += '<td><input type="number" name="item_componente[costo_depreciado][]" class="form-control" placeholder="Costo Depreciado" disabled/></td>';
                html += '<td><input type="number" name="item_componente[porcentaje_costo_fuente][]" class="form-control" placeholder="% Costo Depreciado" disabled/></td>';
                html += '<td><input type="number" name="item_componente[costo_ajustado][]" class="form-control" placeholder="Costo Ajustado" disabled/></td>';
                html += '<td><input type="number" name="item_componente[porcentaje_costo_ajustado][]" class="form-control" placeholder="% Costo Ajustado" disabled/></td>';       
                html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove_componente_obra"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td></tr>';
                $('#item_componentes').append(html);
                num_comp++;
            });
            //2. Borrar
            $(document).on('click', '.remove_componente_obra', function(){
                $(this).closest('tr').remove();
            });

            //1. Agregar Construcción
            $(document).on('click', '#add_construccion', function(){
                var html = '';
                html += '<tr>';
                html += '<td><input type="text"   name="item_construccion[nombre][]" class="form-control" placeholder="Nombre"/></td>';
                html += '<td><select name="item_construccion[tipo][]" class="form-control" placeholder="Tipo"> <option value="Urbanismo" selected="true">Urbanismo</option> <option value="Movimiento de Tierra">Movimiento de Tierra</option> <option value="Obras Preliminares">Obras Preliminares</option> <option value="Infraestructura">Infraestructura</option> <option value="Supraestructura">Supraestructura</option> <option value="Instalaciones Eléctricas">Instalaciones Eléctricas</option></select></td>';
                html += '<td><input type="number" name="item_construccion[valor_ind1][]" class="form-control" placeholder=""/></td>'; 
                html += '<td><input type="number" name="item_construccion[valor_ind2][]" class="form-control" placeholder="" /></td>';
                html += '<td><input type="number" name="item_construccion[valor_ind3][]" class="form-control" placeholder="" /></td>';
                html += '<td><input type="number" name="item_construccion[valor_ind4][]" class="form-control" placeholder="" /></td>';       
                html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove_construccion"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td></tr>';
                $('#item_construcciones').append(html);
            });
            //2. Borrar Construcción
            $(document).on('click', '.remove_construccion', function(){
                $(this).closest('tr').remove();
            });
        });
    </script>
@stop