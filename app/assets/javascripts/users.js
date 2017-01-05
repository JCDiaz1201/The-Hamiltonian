$(document).on('turbolinks:load', function() {
		$("#new-post-link").hide();
		$("#all-user-post").hide();
		$("#all-user-comment").hide()

		$("#new-post-link").fadeIn(1500);
		$("#all-user-post").fadeIn(2050);
		$("#all-user-comment").fadeIn(2400);
});
