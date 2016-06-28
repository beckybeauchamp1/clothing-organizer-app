'use strict';

(function(){
  angular
  .module('clothing-app')
  .directive('responsiveMenu', function(){
    return {
      templateUrl: 'js/_responsive_menu.html',
      link: function(scope){

        scope.showMenu =  false;
        scope.menuName = "View Options";
        scope.toggleMenu = function() {
          scope.showMenu ? scope.showMenu = false : scope.showMenu = true
          scope.showMenu ? scope.menuName = "Close Menu" : scope.menuName = "View Options"
        };
      }
    }
  });

})();
