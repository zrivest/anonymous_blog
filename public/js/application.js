$(document).ready(function() {
  $("#edit_post_link").click(function(event){
    event.preventDefault();
    
    var url = $(this).attr("href");
    
    $.get(url, function(response){
      $("ul").after(response)
    });
  });
});

$(document).ready(function() {
  $("#show_all_posts_link").click(function(event){
    event.preventDefault();
    
    var url = $(this).attr("href");
    $.get(url, function(response){
      console.log(response);
      $("#show_all_posts_link").after(response)
    });
  });
});