'use strict';

(function(){
  angular
  .module('clothing-app')
  .directive('sideBar', function(){
    return {
      templateUrl: 'js/_side_bar.html',
      link: function(scope){
        scope.sideBar = "Side Bar"
      }
    }
  });

})();
