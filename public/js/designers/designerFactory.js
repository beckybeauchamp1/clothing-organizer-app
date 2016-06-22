'use strict';

(function(){
  angular.module('designers')
  .factory('DesignerFactory', [
    '$resource',
    DesignerFactoryFunction
  ])

  function DesignerFactoryFunction($resource){
    return $resource('https://clothing-organizer-app.herokuapp.com/designers/:id', {},
    {
      update: {
        method: 'PUT'
      }
    })
  }
})();
