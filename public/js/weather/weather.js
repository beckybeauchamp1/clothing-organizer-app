(function(){
  angular
  .module("clothing-app")
  .controller("MainController", function($scope, MainFactory){




    function Braces(values){
      var balancedStringValues = []
      for(var i = 0; i < values.length - 1; i ++){
        if(values[i] !== values[i+1]){
          balancedStringValues.push("NO")
        }
        else{
          balancedStringValues.push("YES")
        }
      }
      return balancedStringValues;
    }


    $scope.current_location;
    $scope.weather;
    $scope.temperature;
    $scope.icon;

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
        console.log(lat)
        console.log(long)
        MainFactory.getLocation({lat: lat, long: long}).$promise.then(function(res){
          console.log(res)
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

    // $scope.makeweatherAPIrequest = function(startPos){
    //   var url = "http://api.wunderground.com/api/d7a417fe5f6a1575/conditions/geolookup/q/" + startPos.coords.latitude + "," + startPos.coords.longitude + ".json"
    //   var request = $.ajax({
    //     url: url,
    //     type: "GET",
    //     dataType: "json"
    //   }).then(function(res){
    //     console.log(res)
    //     return res
    //   }).fail(function(res){
    //     alert("failure from user post");
    //   });
    //   return request;
    // };

  });
})();
