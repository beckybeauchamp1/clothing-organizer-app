$(document).ready(function(){


  $(".main-menu").on("click", changeBackgroundHome);

  function changeBackgroundHome(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.6),rgba(0, 0, 0, 0.2)),url('./CSS/plan2.jpg')");
    $("body").css("background-size", "cover");
    $("body").css("background-attachment", "fixed");
  };

});
