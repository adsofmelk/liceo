@extends('layouts.principal')
	@section('content')
                    <div class="header">
			<div class="top-header">
				<div class="logo">
					
					
				</div>
				
				<div class="clearfix"></div>
			</div>
			<div class="content">
                            @include('alerts.errors')
                            <div style='margin-left: auto;margin-right: auto;width:400px; '>
				<h3 style='text-align:center;'><a href="index.html"><img src="images/logo.png"  alt="Liceo Campestre La Mesa" style='width:100px;'/></a><br>{!!config('app.name')!!}</h3>
                                <p>&nbsp;</p>
                                {!!Form::open(['route'=>'log.store','method'=>'POST'])!!}
                                <div class="form-group">
                                        {!!Form::label('correo','Correo: ')!!}
                                        {!!Form::text('email',null,['class'=>'form-control','placeholder'=>'Ingresa tu Correo'])!!}
                                </div>
                                <div class="form-group">
                                        {!!Form::label('password','Password: ')!!}
                                        {!!Form::password('password',['class'=>'form-control','placeholder'=>'Ingresa tu Contraseña'])!!}
                                </div>
                                {!!Form::submit('Iniciar',['class'=>'btn btn-primary'])!!}
                                {!!Form::close()!!}
                            </div>
				
			</div>
		</div>
		
			
		</div>
	@endsection	