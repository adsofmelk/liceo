@extends('admin.template')

@section('content')
@include('logro.menu.menu')
<h2>Logros</h2>
<table class="table">
    <thead>
        <th>Grado</th>
        <th>materia</th>
        <th>Detalle</th>
        <th>Vsible en boletin</th>
        <th>Acción</th>
    </thead>
    <tbody>
    	<?php 
    		/*
    		
    		@foreach($logro as $row)
	        <tr>
	            <td>{{$row->apellidos}} {{$row->nombres}}</td>
	            <td>{{$row->email}}</td>
	            <td>
	            	<?php
	            		$echo ='';
	            		foreach(\App\Helpers::getTipousuarioUsuario($row->idusuario) as $tipo){
	            			$echo.= $tipo->nombretipo . '&nbsp;&nbsp;&nbsp;';
	            		}
	            		echo (rtrim($echo,'&nbsp;&nbsp;&nbsp;'));
	            	?>
	            </td>
	            <td>{{$row->estado}}</td>
	            <td>{!!link_to_route('usuario.edit',$title= "Editar", $parameters = $row->idusuario, $attributes = ["class"=>'btn btn-primary  '])!!}</td>
	        </tr>
	        @endforeach
    		
    		*/
    	?>
        
    </tbody>
</table>

@stop