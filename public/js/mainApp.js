(function(){
  angular
  .module("clothing-app")
  .controller("MainController", function($scope, MainFactory, $stateParams){

    // $scope.photos = MainFactory.getPhotos().$promise.then(function(data){
    //   console.log(data)
    //   return $scope.photos = data;
    // })

    $scope.current_location;
    $scope.weather;
    $scope.temperature;
    $scope.icon;

    $scope.myCallback = function (valueFromDirective) {
      console.log(valueFromDirective);
    };

    $scope.checkForecast = function(weather){
      var time = new Date().getHours()
      var day = "";
      weather = weather.toLowerCase();
      pattern = new RegExp(weather)
      if(weather === "overcast" || weather.match(/cloud/) ){
        weather = "cloudy";
      }
      else if(weather.match(/storm/)) {
        weather = "thunderstorm";
      }

      if(time < 17){
        day = "day"
      }
      else{
        day = "night"
      }
      return $scope.icon = "wi wi-" + day + "-" + weather + "";
    }


    $scope.grabLocation = function(){
      var startPos;
      var geoOptions = {
        maximumAge: 5 * 60 * 1000,
        timeout: 10 * 1000
      };
      var geoSuccess = function(position) {
        startPos = position;
        lat = startPos.coords.latitude;
        long = startPos.coords.longitude;
        MainFactory.getLocation({lat: lat, long: long}).$promise.then(function(res){
          $scope.temperature = res.current_observation.temp_f
          $scope.current_location = res.current_observation.display_location.full
          $scope.checkForecast(res.current_observation.weather);
          return $scope.weather = res.current_observation.weather;
        });
      };
      var geoError = function(error) {
        console.log('Error occurred. Error code: ' + error.code);
      };
      navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
    };

    window.onload = $scope.grabLocation();

    $scope.photos = MainFactory.getPhotos().$promise.then(function(data){
      return $scope.photos = data;
    });

    $scope.toDate = function(date) {
      var d = new Date(date);
      return d.toDateString();
    }

    $scope.photo = MainFactory.getOnePhoto({id: $stateParams.id});

    $(".main-menu").on("click", changeBackgroundHome);

    function changeBackgroundHome(){
      $("body").css("background", "linear-gradient( rgba(255, 255, 255, 0.9),rgba(0, 0, 0, 0.4)),url('./images/plan2.jpg')");
      $("body").css("background-size", "cover");
      $("body").css("background-attachment", "fixed");
    };



  });


})();
