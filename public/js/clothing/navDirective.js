'use strict';

(function(){
  angular
  .module('clothing')
  .directive('clothingNav', function(){
    return {
      templateUrl: 'js/clothing/_clothingNav.html',
      link: function(scope){
        scope.sayHi = console.log('hey')
      }
    }
  })

})();
