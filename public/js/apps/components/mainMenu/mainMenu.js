(function () {
    angular.module('transport.components.mainMenu', ['transport.common'])
    .directive('mainMenu',['appCommon', function (appCommon) {
        return {
            restrict: 'EA',
            replace: true,
            transclude: true,
            controller: 'mainMenuController',
            templateUrl: function () {
                return String.format('{0}{1}',appCommon.baseUrl, "js/apps/components/mainMenu/mainMenu.tpl.html");
            },
            link: function (scope, element, attrs, ngCtrl) {
                console.log('init main Menu.....');
            }
        };
    }])
    .controller('mainMenuController', ['$scope', function($scope){        
        var activate = function(){
            
        };

        activate();
    }])
})();