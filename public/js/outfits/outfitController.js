'use strict';

angular.module('outfits')
.controller('OutfitController', function($scope, OutfitFactory, $stateParams){

  $scope.outfits = OutfitFactory.query().$promise.then(function(data){
    return $scope.outfits = data;
  });
  
});
