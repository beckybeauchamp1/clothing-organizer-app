'use strict';

angular.module('designers').controller('DesignerController', function($scope, $stateParams, DesignerFactory){

  $scope.designers = DesignerFactory.query();


});
