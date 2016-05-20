$(document).ready(function(){

  var dt = new Date();
  var today = dt.toLocaleDateString();
  var time = dt.toLocaleTimeString();
  $("body").append("<div> Today is: " + today + " at: " + time + "</div>")
});
