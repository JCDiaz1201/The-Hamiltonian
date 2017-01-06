$(document).on('turbolinks:load', function() {
		$("#comments-field").hide();
		$(".post-image").hide();
		$(".post-image").fadeIn(1750);


		$("#show-comments-field").click(function(){
			$("#comments-field").slideDown(1250);
			$("#show-comments-field").fadeOut(400);
		});

});