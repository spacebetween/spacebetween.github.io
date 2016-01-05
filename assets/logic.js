$('.jsToggle').on('click', function(){
	var target = $(this).data('toggle');
	$(target).toggleClass('active bounceInDown');
});