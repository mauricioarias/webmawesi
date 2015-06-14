/*********************************************************************************/
/* blog                                                                    */
/*********************************************************************************/

var w =$(window).height();
$( document ).ready(function() {
	/* abrir y cerrar comentarios  con "hover" */
	/* $("#opinar").mouseenter(function(){
		$("#comentario").show("fast");
	}) */
	$(".opinar").click(function(event){
		$(".comentario").show("fast");
	})
	/*$(".contenido").on('click', function(){
		$(".contenidoCompleto").show("fast");
	})*/
    $("#compartir").click(function(event){
		$(".comentario").hide("fast"); 
		$(".contenidoCompleto").hide("fast"); 
	})
	$("#mas").click(function(event){
		$(".comentario").hide("fats"); 
		$(".contenidoCompleto").hide("fast"); 
	})
	
});
