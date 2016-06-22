'use strict';

(function(){
  angular
  .module("clothing-app", [
    'ngSimpleUpload',
    "ngResource",
    "ui.router",
    "outfits",
    "clothing",
    "designers"
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
      controller: "OutfitShowController",
      controllerAs: "OutfitShowVM"
    });
  }

}());
