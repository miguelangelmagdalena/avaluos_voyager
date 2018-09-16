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
                <!-- ### Dictamen ### -->
                <div class="col-lg-5">

                    
                    <div class="panel panel-bordered panel-warning">

                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-image"></i> {{ $dataType->display_name_singular }}</h3>
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

                <!-- ### Unidades Organicas UOP ### -->
                <div class="col-lg-7">  
                    <div class="panel panel-bordered panel-primary">

                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-image"></i> Unidades Orgánicas Productivas</h3>
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
                                <table class="table table-bordered" id="item_table">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Descripción</th>
                                        <th>Metros Cuadrados M2</th>
                                        <th>Costo</th>
                                        <th><button type="button" id="add_uop" class="btn btn-success btn-sm add"><span class="glyphicon glyphicon-plus"></span> Agregar UOP</button></th>
                                    </tr>
                                    @foreach ($uop as $row)
                                        <tr>
                                            <td><input type="text" name="item_uop[nombre][]" class="form-control" placeholder="Nombre" value="{{$row->nombre}}" required/></td>
                                            <td><input type="text" name="item_uop[descripcion][]" class="form-control" placeholder="Descripción" value="{{$row->descripcion}}"/></td>
                                            <td><input type="number" name="item_uop[metros_cuadrados][]" class="form-control" placeholder="Metros Cuadrados M2" value="{{$row->metros_cuadrados}}"/></td>
                                            <td><input type="number" name="item_uop[costo][]" class="form-control" placeholder="Costo" value="{{$row->costo}}" required/></td>        
                                            <td><button type="button" name="remove" class="btn btn-danger btn-sm remove_uop"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td>
                                        </tr>
                                     @endforeach
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


            //To do list para unidades organicas productivas
            //1. Agregar
            $(document).on('click', '#add_uop', function(){
                var html = '';
                html += '<tr>';
                html += '<td><input type="text" name="item_uop[nombre][]" class="form-control" placeholder="Nombre" value="UOP" required/></td>';
                html += '<td><input type="text" name="item_uop[descripcion][]" class="form-control" placeholder="Descripción" /></td>';
                html += '<td><input type="number" name="item_uop[metros_cuadrados][]" class="form-control" placeholder="Metros Cuadrados M2" /></td>';
                html += '<td><input type="number" name="item_uop[costo][]" class="form-control" placeholder="Costo" required/></td>';        
                html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove_uop"><span class="glyphicon glyphicon-minus"></span> Borrar</button></td></tr>';
                $('#item_table').append(html);
            });
            //2. Borrar
            $(document).on('click', '.remove_uop', function(){
                $(this).closest('tr').remove();
            });
        });
    </script>
@stop
