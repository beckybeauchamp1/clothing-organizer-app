'use strict';

(function(){
  angular.module('designers')
  .factory('DesignerFactory', [
    '$resource',
    DesignerFactoryFunction
  ])

  function DesignerFactoryFunction($resource){
    return $resource('http://localhost:3000/designers/:id', {},
    {
      update: {
        method: 'PUT'
      }
    })
  }
})();
