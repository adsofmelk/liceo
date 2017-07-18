
$("form").submit(function(e){
	$('#btn-save').prop('disabled', true);
	var $form = $(this);
    if ($form.data('submitted') === true) {
      e.preventDefault();
    } else {
      $form.data('submitted', true);
    }
});

$('document').ready(function(){
	
	
	
	//BORRAR FALLAS
	$('.borrar').click(function(event){
		
		var idfalla = $(event.target).data('id');
		
		console.log("borrar falla" + idfalla);
		var r = confirm("Desea eliminar esta falla?");
		if(r){
			console.log("Eliminar Falla"  + idfalla);
			if (fallaDestroy(idfalla)){
				location.reload();
				console.log("falla eliminada");
			}else{
				console.log("No pudo eliminarse la falla");
			}
			
			location.reload();
			
		}else{
			console.log("No eliminar falla"  + idfalla);
		}
		
	});
	
	
	//LLAMADA AJAX PARA BORRAR FALLA
	function fallaDestroy(id){
		var respuesta = false;
		 
		$.ajax({
			url:"/fallas/"+id,
			headers:{'X-CSRF-TOKEN':$('#csrf_token').data('token')},
			type:'DELETE',
			dataType:'json',
			success: function(resp){
				respuesta = resp.respuesta;
			}
		});
		 return respuesta;
	 }
});