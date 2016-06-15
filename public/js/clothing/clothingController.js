'use strict';

angular.module('clothing')
.controller('ClothingController', function($scope, ClothingFactory, DesignerFactory, $stateParams){

  // Should this be here
  $scope.designers = DesignerFactory.query();

  $scope.clothes = ClothingFactory.query();

  $scope.dresses = ClothingFactory.grabDresses();

  $scope.one = ClothingFactory.getOne({id: $stateParams.id})

  $scope.changeBackground = function(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.8), rgba(0, 0, 0, 0.3)),url('./CSS/wood.jpg')");
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
