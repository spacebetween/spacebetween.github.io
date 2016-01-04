$('.jsToggle').on('click', function(){
	var target = $( this ).data('toggle');
	console.log('Toggle', this, target);
	$( target ).toggleClass('active bounceInDown');
});