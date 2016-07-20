(function(){
  angular
  .module("clothing-app")
  .factory("MainFactory", [
    "$resource",
    MainFactoryFunction
  ]);

  function MainFactoryFunction($resource){
    return $resource("https://api.wunderground.com/api/d7a417fe5f6a1575/conditions/geolookup/q/", {},
    {
      getLocation: {
        method: "GET",
        params:{
          lat: "@lat",
          long: "@long"
        },
        url: "https://api.wunderground.com/api/d7a417fe5f6a1575/conditions/geolookup/q/:lat,:long.json"
      },
      getPhotos: {
        method: "GET",
        url: "http://localhost:3000/photos/:id",
        isArray: true
      },
      getOnePhoto: {
        method: "GET",
        params: {
          id: '@id'
        },
        url: "http://localhost:3000/photos/:id"
      },
    });
  }
})();
