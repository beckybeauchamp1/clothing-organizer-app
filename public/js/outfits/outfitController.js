'use strict';

angular.module('outfits')
.controller('OutfitController', function($scope, OutfitFactory){

  $scope.outfits = OutfitFactory.query().$promise.then(function(data){
    data = $scope.filterOufits(data)
    return $scope.outfits = data;
  })

  $scope.filterOufits = function(outfits){
    outfits.forEach(function(outfit){
      for(var key in outfit){
        if(outfit[key] === null){
          delete outfit[key]
        }
      }
    });
    return outfits;
  }



});
