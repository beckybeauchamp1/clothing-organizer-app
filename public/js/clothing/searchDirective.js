'use strict';

(function(){
  angular
  .module('clothing')
  .directive('searchBar', function(){
    return {
      templateUrl: "js/clothing/_search.html",
      link: function(scope){
        console.log("working!!")
      }
    }
  })
})();
