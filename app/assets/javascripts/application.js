// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks 
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require semantic-ui
//= require owl.carousel
//= require chosen-jquery
//= require messages
var readyLoad;
readyLoad = function() {
       
	$(".marker.icon").click(function() {
			$('.ui.modal').modal('show');
	});
  $( ".ui.raised.segment.articles" ).before( $( ".article_errors" ) );
      $('.change.effect .image').dimmer({
  on: 'hover'
});
      $('#micropost_picture').bind('change', function() {
size_in_megabytes = this.files[0].size/1024/1024;
if (size_in_megabytes > 5) {
alert('Maximum file size is 5MB. Please choose a smaller file.');
}
});
      $('.chosen-it').chosen();
      $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
      .classList.add('hidden')
    ;
  });
 $("#owl-demo").owlCarousel({
 
      navigation : true, // Show next and prev buttons
      slideSpeed : 500,
      paginationSpeed : 400,
      singleItem:true,
      autoPlay: 4000 //Set AutoPlay to 3 seconds
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 

});
 
};

$(document).ready(readyLoad);
$(document).on('turbolinks:load', readyLoad);

$(document).ready(function() {
    $('.ui.compact.inverted.top.fixed.menu').menu();
});
