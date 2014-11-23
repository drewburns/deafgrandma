$(document).ready(function(){                                  // this means, only do this when the document  is ready
  $("#user_input").on("submit", function(event) {     // do this function when element w/ id user_input is submitted
    event.preventDefault();                                        // stop whatever would happen by default (don't submit the form)

    var url = $(this).attr('action')
    console.log(url)                            // i like to save things to variables. this one is grabbing the URL from the form
    var data = $(this).serialize() 
    console.log(data)                        // serialize the content from 'this' (the form)
    
    $.post(url, data, function(response){
    console.log(response)            // you can use $.ajax or $.post. it submits a post requst with the specified url and data
      $("#grandma-says").html(response)           // and get a response. this line takes the response and puts it in the html of element with id = 
                                                                        //  grandma-says
    });
  });
});