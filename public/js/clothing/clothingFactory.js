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
      getOne: {
        method: "GET",
        params: {
          id: '@id'
        },
        url: "http://localhost:3000/clothing/:id"
      },
      grabDresses:{
        method: "GET",
        url: "http://localhost:3000/dresses/:id",
        isArray: true
      },
      saveClothing: {
        method: "PUT",
        params: {
          id: '@id',
          times_worn: '@times_worn'
        },
        url: "http://localhost:3000/clothing/:id"
      },
      newClothing: {
        method: "POST",
        params: {
          title: '@title',
          description: '@description',
          cost: '@cost',
          length: '@length',
          size: '@size',
          sleeve_type: '@sleeve',
          type: '@type',
          color: '@color',
          designer_id: '@designer_id'
        },
        url: "http://localhost:3000/clothing"
      }
    });
  }

})();
