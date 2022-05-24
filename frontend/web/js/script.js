$(document).ready(function() {
   $(document).on( 'pjax:success' , function(selector, xhr, status, selector, container) {
	   test();
   });
});

function test() {
	$('.answer').click(function(){
 	   $.ajax({
        url:   '/answer', 
        type:     "get", //метод отправки
        dataType: "html", //формат данных
        success: function(response) { //Данные отправлены успешно
		if($('.modal-body').html().trim() === '') {
		   $('.modal-body').html('Ответ:<br><br><div class="alert alert-warning">'+response+'</div>');
		}
		} 
    });	

	});
}