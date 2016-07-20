'use strict';

angular.module('designers').controller('DesignerShowC', function($scope, $stateParams, DesignerFactory, $state){

  $scope.designer = DesignerFactory.get({id: $stateParams.id})

  $scope.saveUrl = function(){
    $scope.designer.website_url = $scope.website_url
    $scope.designer.$update({id: $stateParams.id})
    $state.go("designerShow", {id: $stateParams.id}, {reload: true});
  }

  $scope.showInput = true;

  $scope.changeInputView = function() {
    $scope.showInput ? $scope.showInput = false : $scope.showInput = true;
  }

})
