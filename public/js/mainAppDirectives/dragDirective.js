'use strict';

(function(){
  angular
  .module('clothing-app')
  .directive('ngDraggable', function($document, $window){
    function makeDraggable(scope, element, attr) {



      var startX = 0;
      var startY = 0;

      var x = scope.coordinates.x || 0;
      var y = scope.coordinates.y || 0;

      console.log(scope.coordinates.x)

      element.css({
        position: 'relative',
        cursor: 'pointer',
        top: y + 'px',
        left: x + 'px'
      });

      element.on('mousedown', function(event) {
        event.preventDefault();

        startX = event.pageX - x;
        startY = event.pageY - y;

        $document.on('mousemove', mousemove);
        $document.on('mouseup', mouseup);
      });

      function mousemove(event) {
        y = event.pageY - startY;
        x = event.pageX - startX;
        element.css({
          top: y + 'px',
          left: x + 'px'
        });
      }

      function mouseup() {
        $document.unbind('mousemove', mousemove);
        $document.unbind('mouseup', mouseup);
      }

    }
    return {
      scope: {
        coordinates: '='
      },
      link: makeDraggable
    };
  });

})();
