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
      }

    });
  }
})();
