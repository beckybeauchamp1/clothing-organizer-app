'use strict';

angular.module('outfits')
.controller('OutfitController', function($scope, OutfitFactory, $stateParams){

  $scope.outfits = OutfitFactory.query().$promise.then(function(data){
    console.log(data)
    return $scope.outfits = data;
  });

  $scope.myCallback = function (valueFromDirective) {
      console.log(valueFromDirective);
  };


});
