@extends('admin.template')

@section('content')
@include('logro.menu.menu')
<h2>Modificar Logro</h2>
{!!Form::model($logro,['route'=>['logro.update',$logro->idlogro],'method'=>'PUT'])!!}
   
    @include('logro.forms.logroforms')

     {!!Form::submit("Actualizar",["class"=>"btn btn-primary"])!!}
{!!Form::close()!!}
<hr>
{!!Form::open(['route'=>['logro.destroy',$logro->idlogro],'method'=>'DELETE'])!!}
     {!!Form::submit("Eliminar",["class"=>"btn btn-danger"])!!}
{!!Form::close()!!}
<hr>
    
{!!Html::script('app/js/ModLogro.js')!!}
@stop


