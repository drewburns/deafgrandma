$(document).ready(function() {
	$( "#sumbit_button" ).submit(function() {
		var str = $("form").serialize();
		$.ajax({
		  type: "POST",
		  url: '/',
		  data: str,
		  success: success,
		});
	});
});