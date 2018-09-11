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
            action="@if(!is_null($dataTypeContent->getKey())){{ route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.'.$dataType->slug.'.store', ['avaluo' => Request::get('avaluo_id')] ) }}@endif"
            method="POST" enctype="multipart/form-data">
        <!-- PUT Method if we are editing -->
        @if(!is_null($dataTypeContent->getKey()))
            {{ method_field("PUT") }}
        @endif
         <!-- CSRF TOKEN -->
         {{ csrf_field() }}

            <div class="row">
            
                <div class="col-md-4">
                    <!-- ### solicitante ### -->
                    <div class="panel panel-bordered panel-warning">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon wb-image"></i> {{ $dataType2->display_name_singular }} </h3>
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

                                    <label for="name">¿Es un nuevo solicitante?</label>
                                    <select class="form-control select2 select2-hidden-accessible" id="new_solicitante"  name="new_solicitante" tabindex="-1" aria-hidden="true">
                                        <option value="true">Si, agregar nuevo solicitante</option>                       
                                        <option value="false">No, ya existe</option>   
                                    </select>
                                </div>

                                <div class="form-group  col-md-12 hidden" id="new_solicitante2">
                                    <label for="name">Solicitantes</label>
                                    <select class="form-control select2 select2-hidden-accessible" id="old_solicitante" name="old_solicitante" tabindex="-1" aria-hidden="true">
                                        @foreach ($solicitantes_list as $row)
                                            <option value="{{ $row->id }}">{{ $row->nombre.' '.$row->cedula.' '.$row->email}}</option>                       
                                        @endforeach
                                    </select>
                                </div>

                                
                                <div id="new_solicitante3">
                                <!-- Adding / Editing -->
                                @php
                                    $dataTypeRows2 = $dataType2->{(!is_null($dataTypeContent2->getKey()) ? 'editRows' : 'addRows' )};
                                @endphp

                                @foreach($dataTypeRows2 as $row)
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
                        </div>
                    </div>

                </div>

                <div class="col-md-8">

                    <div class="panel panel-bordered panel-primary">

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
            </div>

            
            <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
            <a href="{{ action('Voyager\GeneralController@next_content', ['id' => $dataTypeContent->id, 'avaluo_id' =>$dataTypeContent->avaluo_id, 'slug' => $dataType->slug]) }}" class="btn btn-sm btn-success pull-right edit">
                <i class="voyager-plus"></i> <span>Siguiente</span>
            </a>
            
            <a href="{{ action('Voyager\GeneralController@previous_content', ['id' => $dataTypeContent->id, 'avaluo_id' =>$dataTypeContent->avaluo_id, 'slug' => $dataType->slug]) }}" title="Editar" class="btn btn-sm btn-primary pull-right edit">
                <i class="voyager-edit"></i> <span class="">Anterior</span>
            </a>
            
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


            //Cuando pregunta si es nuevo solicitante
            $("#new_solicitante").change(function(){
                var valor = $(this).val();
                //alert("s: " + valor );

                if (valor == "true"){
                    //alert("s: " + valor );
                    $("#new_solicitante2").addClass("hidden");
                    $("#new_solicitante3").removeClass("hidden");
                }else{
                    $("#new_solicitante2").removeClass("hidden");
                    $("#new_solicitante3").addClass("hidden");
                }
                    
            });
        });
    </script>
@stop
