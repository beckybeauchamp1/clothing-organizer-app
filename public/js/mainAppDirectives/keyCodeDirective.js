'use strict';

(function(){
  angular
  .module("clothing-app")
  .directive('enterKeyCode', enterKeyCode);

  function enterKeyCode() {
    return {
      restrict: 'A',
      link: function($scope, $element, $attrs) {
        $element.bind("keypress", function(event) {
          var keyCode = event.which || event.keyCode;

          if (keyCode == $attrs.code) {
            $scope.$apply(function() {
              $scope.$eval($attrs.enterKeyCode, {$event: event});
            });

          }
        });
      }
    };
  }
})();
