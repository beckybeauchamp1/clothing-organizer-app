'use strict';

angular.module('clothing')
.controller('ClothingController', function($scope, ClothingFactory, $stateParams){

  $scope.clothes = ClothingFactory.query();
  console.log($scope.clothes)

  $scope.dresses = ClothingFactory.grabDresses();
  console.log($scope.dresses)

  $scope.one = ClothingFactory.getOne({id: $stateParams.id})

  $scope.changeBackground = function(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.8),rgba(255, 255, 255, 0.6)),url('./CSS/wood.jpg')");
  }

  $scope.changeBackground();

  $scope.checkForImages = function(photos){
    if(photos.length > 0){
      console.log("true")
      return true
    }
    else{
      console.log("false");
      return false;
    }
  }


});
