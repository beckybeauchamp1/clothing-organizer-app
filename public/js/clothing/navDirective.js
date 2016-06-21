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
            $(".nested-dropdown-ul").css("display", "none");
            $(".sub-nested-dropdown").css("display", "none")
          }
          else {
            $(".dropdown-div").css("background-color", "rgba(141, 171, 191, 0.9)");
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
