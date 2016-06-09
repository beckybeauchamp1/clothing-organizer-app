'use strict';

(function(){
  angular
  .module("clothing-app", [
    'ngSimpleUpload',
    "ngResource",
    "ui.router",
    "outfits",
    "clothing"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("main", {
      url: '/home',
      templateUrl: "./js/home.html",
      controller: "homeController",
      controllerAs: "homeVM"
    })
    .state("initalLoad", {
      url: "",
      templateUrl: "./js/home.html",
      controller: "MainController",
      controllerAs: "MainVM"
    })
    .state("clothing", {
      url: "/clothes",
      templateUrl: "./js/clothing/index.html",
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
      controller: "OutfitShowController",
      controllerAs: "OutfitShowVM"
    });
  }

}());
