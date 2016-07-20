'use strict';

angular.module('clothing')
.controller('ClothingController', function($scope, ClothingFactory, DesignerFactory, $stateParams, $state, FileUploader){

  // Should this be here
  $scope.designers = DesignerFactory.query();

  $scope.clothes = ClothingFactory.query();

  $scope.dresses = ClothingFactory.grabDresses();

  $scope.one = ClothingFactory.getOne({id: $stateParams.id})

  $scope.changeBackground = function(){
    $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.95), rgba(255, 255, 255, 0.8)),url('./images/wood.jpg')");
  }

  $scope.changeBackground();

  $scope.checkForImages = function(photos){
    if(photos.length > 0 || photos === undefined){
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

  $scope.grabTodaysDate = function(){
    var date = new Date();
    var day = date.getDay();
    var month = date.getMonth();
    var year = date.getUTCFullYear();
    return day + '/' + month + '/' + year ;
  }

  $scope.wearClothing = function(clothing) {
    ClothingFactory.saveClothing({id: clothing.id, times_worn: parseInt(clothing.timesWorn) + 1}).$promise.then(function(data) {
      console.log(data);
      $state.go("clothingShow", {id: clothing.id}, {reload: true})
    });

  }

  $scope.types = ["Shirt", "Dress", "Pant", "Short", "Skirt"]
  $scope.sizes=["XXS", "XS", "S", "M", "L", "XL"];
  $scope.lengths =["short", "regular", "long"];
  $scope.sleeve_types =["mid", "long", "short", "sleeveless", "strapless", "spaghetti"]

  $scope.showErrorMessage = false;
  $scope.error = "Please fill in the required fields marked *";

  $scope.saveClothingArticle = function(){
    var title = $scope.clothingTitle;
    var description = $scope.clothingDescription;
    var size = $scope.size;
    var type = $scope.type;
    var length = $scope.length;
    var sleeve = $scope.sleeve;
    var designer = $scope.designer;
    var cost = $scope.cost;
    var color = $scope.color;
    console.log(title)
    console.log(designer)
    if( title === undefined || description === undefined || type === undefined ) {
      $scope.showErrorMessage = true;
      $('html, body').animate({ scrollTop: 0 }, 'slow');
    }
    else {
      $scope.showErrorMessage = false;

      ClothingFactory.newClothing({title: title, description: description, size: size, type: type, length: length, sleeve_type: sleeve, cost: cost, times_worn: 0, designer_id: designer}).$promise.then(function(data){
        console.log(data);
      });
    }
  }

  $scope.changeColor = function(color, input){
    $(input.currentTarget).css("color", color);
  }

  $scope.defaultEditValues = function(){
    $scope.one.$promise.then(function(item){
      $scope.clothingTitle = item.title;
      $scope.clothingDescription = item.description;
      $scope.size = item.size;
      $scope.type = item.type;
      $scope.length = item.length
      $scope.sleeve = item.sleeve_type;
      $scope.designer = item.designer_id;
      $scope.cost = item.cost;
      $scope.color = item.color;
    })
  }

  $scope.uploader = new FileUploader();

});
