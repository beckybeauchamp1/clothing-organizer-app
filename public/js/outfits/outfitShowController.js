'use strict';

angular.module("outfits")
.controller("OutfitShowController", function($scope, OutfitFactory, $stateParams){

  $scope.one = OutfitFactory.getOne({id: $stateParams.id}).$promise.then(function(data){
    var outfit = $scope.filterOufits(data)
    return $scope.one = outfit;
  });

  $scope.filterOufits = function(outfit){
    for(var key in outfit){
      if(outfit[key] === null){
        delete outfit[key]
      }
    }
    return outfit;
  }


});
