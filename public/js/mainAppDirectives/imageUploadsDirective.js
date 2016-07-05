'use strict';

(function(){
  angular
  .module('clothing-app')
  .directive('imageUpload', function(){
    return {
      templateUrl: 'js/mainAppDirectives/_input_upload.html'
    }
  })
})();
