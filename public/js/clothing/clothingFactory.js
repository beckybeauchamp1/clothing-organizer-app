'use strict';

(function(){
  angular
  .module("clothing")
  .factory("ClothingFactory", [
    "$resource",
    ClothingFactoryFunction
  ]);

  function ClothingFactoryFunction($resource){
    return $resource("https://clothing-organizer-app.herokuapp.com/clothing/:id", {},
    {
      update: {
        method: "PUT"
      },
      getOne: {
        method: "GET",
        params: {
          id: '@id'
        },
        url: "https://clothing-organizer-app.herokuapp.com/clothing/:id"
      },
      grabDresses:{
        method: "GET",
        url: "https://clothing-organizer-app.herokuapp.com/dresses/:id",
        isArray: true
      }
    });
  }

})();
