$(document).ready(function() {
	$( "form#user_input" ).on("submit", (function(event) {
           event.preventDefault();  
		$.ajax({
			type: "POST"
            url: "/test",
            data: $(this).serialize(),
            dataType: "html",
        });
	});
});
