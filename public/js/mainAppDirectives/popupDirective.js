'use strict';

(function(){
  angular
  .module("clothing-app")
  .directive('popUp', function() {
    return {
      templateUrl: "js/mainAppDirectives/_popup.html",
      link: function(scope) {
        scope.open = false;
        scope.openPopUp = function(){
          var openPopupOne  = $('#openPopupOne'),
          overlay     = $('.overlay'),
          popup       = $('.popup'),
          closePopUpOne = $('#closePopUpOne');
          overlay.fadeIn();
          popup.show(0, function () {
            $(this).toggleClass('oneOpen');
          });

        }
        scope.closePopUp = function(){
          var openPopupOne  = $('#openPopupOne'),
          overlay     = $('.overlay'),
          popup       = $('.popup'),
          closePopUpOne = $('#closePopUpOne');
          overlay.fadeOut();
          popup.toggleClass('oneOpen').delay(700).promise().done(function () {
            $(this).hide();
          });
        }

        scope.openPopUp();


      }
    }
  })
})();
