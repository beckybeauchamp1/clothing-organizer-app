'use strict';

angular.module('outfits')
.controller('OutfitController', function($scope, OutfitFactory, ClothingFactory, $stateParams, $state){

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
    var topId = $scope.photos[0].id
    var bottomId = $scope.photos[1].id
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



    $scope.showForm = false;
    $scope.buttonName = "Create Outfit"

    $scope.toggleForm = function(){
      $scope.showForm ? $scope.showForm = false : $scope.showForm = true
      $scope.showForm ? $scope.buttonName= "Close Menu" : $scope.buttonName= "View Options"
    };

    $scope.tops = [];
    $scope.bottoms =[];
    $scope.clothes = ClothingFactory.query().$promise.then(function(data){
      data.forEach(function(clothing){
        if(clothing.type === "Dress" || clothing.type === "Shirt"){
          $scope.tops.push(clothing)
        }
        else {
          $scope.bottoms.push(clothing)
        }
      });
      return $scope.clothes = data;
    })

    $scope.photo;
    $scope.photo2;


    $scope.grabclothingPhoto = function(clothingId){
      console.log(clothingId)
      ClothingFactory.getOne({id: clothingId}).$promise.then(function(data){
        if(data.photos.length > 0) {
          return $scope.photo = data.photos[0]
        }
        else {
          return $scope.photo = false;
        }
      })
    }

    $scope.grabclothingPhoto2 = function(clothingId){
      console.log(clothingId)
      ClothingFactory.getOne({id: clothingId}).$promise.then(function(data){
        if(data.photos.length > 0) {
          return $scope.photo2 = data.photos[0]
        }
        else {
          return $scope.photo2 = false;
        }
      })
    }

    $scope.toDate = function(date) {
      var d = new Date(date);
      return d.toDateString();
    }

    $scope.description;

    $scope.createOutfit = function(){
      OutfitFactory.newOutfit({description: $scope.description, clothing_top_id: $scope.selected, clothing_bottom_id: $scope.selected2}).$promise.then(function(data){
        console.log(data);
        $state.go("outfits");
      });
    }

    $scope.checkPhoto = function(clothing){
      if(clothing.photos.length === 0 || clothing.photos.length === undefined){

        return '.has-photo';
      }
      else {
        console.log("true")
        return true;
      }
    }


  });
