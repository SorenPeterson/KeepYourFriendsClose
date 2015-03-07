$(document).ready(function(response){
  $("#chat-link").on("click", function(response){
    $("#map-canvas").hide();
    $("#chat-canvas").show();
  })

  $("#map-link").on("click", function(response){
    $("#chat-canvas").hide();
    $("#map-canvas").show();
  })

})
