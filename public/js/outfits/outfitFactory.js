(function(){
  angular
  .module("outfits")
  .factory("OutfitFactory", [
    "$resource",
    OutfitFactoryFunction
  ]);

  function OutfitFactoryFunction($resource){
    return $resource("https://clothing-organizer-app.herokuapp.com/outfits/:id", {},
    {
      update: {
        method: "PUT"
      },
      getOne: {
        method: "GET",
        params: {
          id: '@id'
        },
        url: "https://clothing-organizer-app.herokuapp.com/outfits/:id",
        isArray: false
      },

    });
  }

})();
