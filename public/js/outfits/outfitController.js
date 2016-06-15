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

  $scope.changeBackground = function(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.8),rgba(0, 0, 0, 0.2)),url('./CSS/wood.jpg')");
  }

  $scope.changeBackground();

  $scope.changeBackgroundHome = function(){
    console.log("working")
    $("body").css("background-image", "url('./CSS/plan2.jpg')");
  };


});
