$( document ).ready(function() {

var $offer  = $('.remove');

$offer.waypoint(function (direction) {
	if (direction == 'down') {
	$('.waypoint-nav').fadeIn(800, function() {
       $( ".waypoint-nav" ).removeClass( "hidden" );
    });
} else {
	$('.waypoint-nav').fadeOut(800, function() {
       $( ".waypoint-nav" ).addClass( "hidden" );
    });
}

}, { offset: '100%'});
});




