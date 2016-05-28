'use strict';

(function(){
  angular
  .module("clothing-app", [
    "ngResource",
    "ui.router"
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
    });
  }

}());
