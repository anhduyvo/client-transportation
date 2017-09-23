(function () {
    'use strict';
    angular.module('transport.common', [])
    .factory('appCommon', ['$q', '$location', function ($q, $location) {
        var appCommon = function () {            
        };
        appCommon.prototype.baseUrl = function(){            
            return '/'; // dev local mode
        };
        return new appCommon();
    }]);
})();

