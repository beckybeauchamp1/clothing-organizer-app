'use strict';

(function(){
  angular
  .module('clothing')
  .directive('clothingNav', function(){
    return {
      templateUrl: 'js/clothing/_clothingNav.html',
      link: function(scope){
        scope.startClickEvent = function(object){
          if($(".nested-dropdown-ul").css("display") === "inline" || $(".nested-dropdown-ul").css("display") === "block") {
            $(".dropdown-div").css("background-color", "rgba(0,0,0,0.0)");
            $(".dropdown-div").css("box-shadow", "0px 0px 0px rgba(0,0,0,0.0)");
            $(".nested-dropdown-ul").css("display", "none");
            $(".sub-nested-dropdown").css("display", "none")
          }
          else {
            $(".dropdown-div").css("background-color", "rgb(232, 232, 232)");
            $(".dropdown-div").css("box-shadow", "5px 5px 5px gray");
            $(".nested-dropdown-ul").css("display", "inline");
          }
        }
        scope.nestedDropdown = function(object, value){
          if(value){
            var subDropMenu = $(".sub-nested-dropdown" + "1");
          }
          else{
            var subDropMenu = $(".sub-nested-dropdown");
          }
          subDropMenu.toggle();
        }
      }
    }
  })

})();
