(function(){
  angular
  .module("outfits")
  .factory("OutfitFactory", [
    "$resource",
    OutfitFactoryFunction
  ]);

  function OutfitFactoryFunction($resource){
    return $resource("http://localhost:3000/outfits/:id", {},
    {
      update: {
        method: "PUT"
      },
      getOne: {
        method: "GET",
        params: {
          id: '@id'
        },
        url: "http://localhost:3000/outfits/:id"
      },
      updatePhoto: {
        method: "PUT",
        params: {
          id: '@id',
          top_id: '@top_id',
          top_x: '@top_x',
          top_y: '@top_y',
          bottom_id: '@bottom_id',
          bottom_x: '@bottom_x',
          bottom_y: '@bottom_y'
        },
        url: "http://localhost:3000/outfits/:id"
      }

    });
  }

})();
