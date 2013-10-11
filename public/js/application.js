$(document).ready(function() {
  $("#edit_post_link").click(function(event){
    event.preventDefault();
    
    var url = $(this).attr("href");
    
    $.get(url, function(response){
      $("ul").after(response)
    });
  });
});