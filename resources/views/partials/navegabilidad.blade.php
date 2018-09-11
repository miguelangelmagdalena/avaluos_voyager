<a href="{{ action('Voyager\GeneralController@next_content', ['id' => $dataTypeContent->id, 'avaluo_id' =>$dataTypeContent->avaluo_id, 'slug' => $dataType->slug]) }}" class="btn btn-sm btn-success pull-right edit">
    <i class="voyager-plus"></i> <span>Siguiente</span>
</a>

<a href="{{ action('Voyager\GeneralController@previous_content', ['id' => $dataTypeContent->id, 'avaluo_id' =>$dataTypeContent->avaluo_id, 'slug' => $dataType->slug, 'avaluo' => Request::get('avaluo_id')]) }}" title="Editar" class="btn btn-sm btn-primary pull-right edit">
    <i class="voyager-edit"></i> <span class="">Anterior</span>
</a>