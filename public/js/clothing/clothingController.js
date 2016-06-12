'use strict';

angular.module('clothing')
.controller('ClothingController', function($scope, ClothingFactory, $stateParams){

  $scope.clothes = ClothingFactory.query();
  console.log($scope.clothes)

  $scope.dresses = ClothingFactory.grabDresses();
  console.log($scope.dresses)

});
