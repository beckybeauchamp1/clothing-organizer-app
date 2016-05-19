'use strict';

(function(){
  angular
  .module("clothing-app", [
    "ui.router"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("main", {
      url: '/',
      templateUrl: "./js/home.html",
      controller: "homeController",
      controllerAs: "homeVM"
    })
  }

}());
