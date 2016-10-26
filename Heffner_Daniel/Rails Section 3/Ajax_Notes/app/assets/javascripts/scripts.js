var timer;

$(function(){

	$('#new_note').submit(function(){
		setTimeout(function(){$('#new_title').val('');}, 100);
	});

	$('#notes').on('keydown', 'textarea', function(){
		var textarea = $(this);
		if (timer) clearTimeout(timer);
		timer = setTimeout(function(){
			timer = null;
			textarea.parent().submit();
		}, 1000);
	})

})