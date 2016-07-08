'use strict';

angular.module('outfits')
.controller('OutfitController', function($scope, OutfitFactory, $stateParams, $state){

  $scope.outfits = OutfitFactory.query().$promise.then(function(data){
    return $scope.outfits = data;
  });

  $scope.myCallback = function (valueFromDirective) {
    console.log(valueFromDirective);
  };

  $scope.changeBackground = function(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.95),rgba(255, 255, 255, 0.8)),url('./images/wood.jpg')");
  }

  $scope.changeBackground();

  $scope.changeBackgroundHome = function(){
    $("body").css("background-image", "url('./images/plan2.jpg')");
  };

  $scope.one = OutfitFactory.getOne({id: $stateParams.id});

  $scope.photos = [];


  $scope.addValues = function(value){
    return $scope.photos.push(value);
  }

  $scope.findCoord = function(){
    console.log($scope.photos);
    var topId = $scope.photos[0].id
    var bottomId = $scope.photos[1].id
    console.log(bottomId)
    var top_x = $("#top-photo").css("left").substring("_px")
    var topX = parseInt(top_x);
    var top_y = $("#top-photo").css("top").substring("_px")
    var topY = parseInt(top_y);
    var bottom_x = $("#bottom-photo").css("left").substring("_px");
    var bottomX = parseInt(bottom_x);
    var bottom_y = $("#bottom-photo").css("top").substring("_px");
    var bottomY = parseInt(bottom_y);
    OutfitFactory.updatePhoto({id: $stateParams.id, top_id: topId, top_x: topX, top_y: topY,
      bottom_id: bottomId, bottom_x: bottomX, bottom_y: bottomY }).$promise.then(function(data) {
        console.log(data);
        $state.go("outfitShow", {id: $stateParams.id}, {reload: true})
      });
    }

    $scope.coordinates;
    console.log($scope.coordinates);
    // $scope.coordinates2;





  });
