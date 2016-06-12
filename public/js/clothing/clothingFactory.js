'use strict';

(function(){
  angular
  .module("clothing")
  .factory("ClothingFactory", [
    "$resource",
    ClothingFactoryFunction
  ]);

  function ClothingFactoryFunction($resource){
    return $resource("http://localhost:3000/clothing/:id", {},
    {
      update: {
        method: "PUT"
      },
      grabDresses:{
        method: "GET",
        url: "http://localhost:3000/dresses/:id",
        isArray: true
      }
    });
  }

})();
