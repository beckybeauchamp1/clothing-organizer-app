'use strict';

angular.module('clothing')
.controller('ClothingController', function($scope, ClothingFactory, DesignerFactory, $stateParams){

  // Should this be here
  $scope.designers = DesignerFactory.query();

  $scope.clothes = ClothingFactory.query();

  $scope.dresses = ClothingFactory.grabDresses();

  $scope.one = ClothingFactory.getOne({id: $stateParams.id})

  $scope.changeBackground = function(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.6)),url('./images/wood.jpg')");
  }

  $scope.changeBackground();

  $scope.checkForImages = function(photos){
    if(photos.length > 0){
      return true
    }
    else{
      return false;
    }
  }

  $scope.sizeOptions = [];

  $scope.addClothingSize = function(size){
    var i = $.inArray(size, $scope.sizeOptions);
    if (i > -1) {
      $scope.sizeOptions.splice(i, 1);
    }
    else{
      $scope.sizeOptions.push(size)
    }
  }

  $scope.filterColors = function(clothing){
    if($scope.sizeOptions.length > 0){
      if($.inArray(clothing.size, $scope.sizeOptions)< 0)
      return;
    }
    return clothing;
  }


});
