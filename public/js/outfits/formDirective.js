'use strict';

(function(){
  angular
  .module('outfits')
  .directive('form', function(){
    return {
      templateUrl: "js/outfits/_form.html",
      link: function(scope){
        scope.hey = "HEYYYYYY";

      }
    }
  })
})();
