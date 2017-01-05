$(document).on('turbolinks:load', function() {
		$(".post-preview").hide();
		$("#about-section").hide();

		$("#about-section").fadeIn(2000);
		$(".post-preview").slideDown(1500);
});