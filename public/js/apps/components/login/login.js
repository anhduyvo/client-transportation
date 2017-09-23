(function () {
    'use strict';    
    angular.module('transport.components.login', ['transport.common'])
    .directive('transportLogin', transportLogin)    
    .controller('loginController', loginController);
    
    // directive    
    transportLogin.$inject = ['appCommon'];
    function transportLogin(appCommon){
        return {
            restrict: 'EA',
            replace: true,
            transclude: true,
            controller: 'loginController',
            templateUrl: function () {
                return String.format('{0}{1}',appCommon.baseUrl, "js/apps/components/login/login.tpl.html");
            },
            link: function (scope, element, attrs, ngCtrl) {
                console.log('init login.....');
            }
        };
    };

    // controller
    loginController.$inject = ['$scope', '$rootScope', '$location', '$window'];
    function loginController($scope, $rootScope, $location, $window) {
        var animateLogin = function(){
            $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
        }

		$scope.login = function () {
			console.log('---login---');
            $window.location.href = '/admin';
		};
		
		$scope.signIn = function(){
            console.log('---signIn---');
            animateLogin();
        };

        $scope.createAccount = function(){
            console.log('---createAccount---');
            animateLogin();
        };

        $scope.registerAccount = function(){
            console.log('---registerAccount---');
        }
	}
})();
