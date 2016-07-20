'use strict';

(function(){
  angular
  .module("clothing-app", [
    "ngResource",
    "ui.router",
    "outfits",
    "clothing",
    "designers",
    'ngSimpleUpload'
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("initalLoad", {
      url: "",
      templateUrl: "./js/home.html",
      controller: "MainController",
      controllerAs: "MainVM"
    })
    .state('photoShow', {
      url: "/photos/:id",
      templateUrl: "./js/photos/show.html",
      controller: "MainController",
      controllerAs: "MainVM"
    })
    .state("clothing", {
      url: "/clothes",
      templateUrl: "./js/clothing/index.html",
      controller: "ClothingController",
      controllerAs: "ClothingVM"
    })
    .state("todaysClothing", {
      url: "/clothes/today",
      templateUrl: "./js/clothing/timesWorn.html",
      controller: "ClothingController",
      controllerAs: "ClothingVM"
    })
    .state("clothingNew", {
      url: "/clothes/new",
      templateUrl: "./js/clothing/new.html",
      controller: "ClothingController",
      controllerAs: "ClothingVM"
    })
    .state("clothingEdit", {
      url: '/clothes/:id/edit',
      templateUrl: "./js/clothing/edit.html",
      controller: "ClothingController",
      controllerAs: "ClothingVM"
    })
    .state("clothingShow", {
      url: "/clothes/:id",
      templateUrl: "./js/clothing/show.html",
      controller: "ClothingController",
      controllerAs: "ClothingVM"
    })
    .state('designersIndex', {
      url: '/designers',
      templateUrl: "./js/designers/index.html",
      controller: "DesignerController",
      controllerAs: "DesignerVM"
    })
    .state('designerShow', {
      url: '/designers/:id',
      templateUrl: "./js/designers/show.html",
      controller: "DesignerShowC",
      controllerAs: "DesignerShowVM"
    })
    .state('dresses', {
      url: "/dresses",
      templateUrl: "./js/clothing/dresses.html",
      controller: "ClothingController",
      controllerAs: "ClothingVM"
    })
    .state("outfits", {
      url: '/outfits',
      templateUrl: "./js/outfits/index.html",
      controller: "OutfitController",
      controllerAs: "OutfitVM"
    })
    .state("outfitShow", {
      url: "/outfits/:id",
      templateUrl: "./js/outfits/show.html",
      controller: "OutfitController",
      controllerAs: "OutfitVM"
    })
  }

}());
