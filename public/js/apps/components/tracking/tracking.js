(function () {
    'use strict';    
    angular.module('transport.components.tracking', ['transport.common', 'bootstrapLightbox'])
    .directive('trackButton', trackButton)
    .directive('trackDialog', trackDialog)
    .controller('trackController', trackController);
    
    // directive    
    trackButton.$inject = [];
    function trackButton(appCommon){
        return {
            restrict: 'EA',
            replace: true,
            transclude: true,
            controller: 'trackController',
            template: '<a href="" ng-click="showDialog()" class="track_button">Track Shipment</a>',
            link: function (scope, element, attrs, ngCtrl) {
                console.log('init trackButton.....');
            }
        };
    };

    trackDialog.$inject = [];
    function trackDialog(appCommon){
        return {
            restrict: 'EA',
            replace: true,
            transclude: true,
            controller: 'trackController',
            templateUrl: function () {
                return String.format('{0}{1}',appCommon.baseUrl, "js/apps/components/tracking/tracking.tpl.html");
            },
            link: function (scope, element, attrs, ngCtrl) {
                console.log('init trackDialog.....');
            }
        };
    };

    // controller
    trackController.$inject = ['$scope', '$rootScope', '$location', '$window', 'Lightbox'];
    function trackController($scope, $rootScope, $location, $window, Lightbox) {
        $scope.images = [
            {
                'url': 'images/bg.jpg',
                'thumbUrl': 'images/bg.jpg',
                'caption': 'Transportation'
            },
            {
                'type': 'video',
                'url': '/videos/our-service.mp4'
            },
        ];        

        $scope.showDialog = function(){
            Lightbox.openModal($scope.images, 1);
        }
	}
})();
