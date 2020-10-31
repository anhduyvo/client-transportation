(function () {
    angular.module('product.directive', [])
    .directive('ngProductDetail',[function () {
        return {
            restrict: 'EA',
            required: 'ngModel',
            replace: true,
            transclude: true,
            scope:{
                product:'=',
                hello:'='
            },
            templateUrl: function() {
                return 'modules/product/ngProductDetail.tpl.html';
            },
            link: function (scope, element, attrs, modelCtrl) {
            }
        };
    }])
    .directive('ngProductList',[function () {
        return {
            restrict: 'EA',
            required: 'ngModel',
            replace: true,
            transclude: true,
            scope:{
                products:'='
            },
            templateUrl: function() {
                return 'modules/product/ngProductList.tpl.html';
            },
            link: function (scope, element, attrs, modelCtrl) {
            }
        };
    }])
    .directive('ngProductRelated',[function () {
        return {
            restrict: 'EA',
            required: 'ngModel',
            replace: true,
            transclude: true,
            scope:{
                productlist:'='
            },
            templateUrl: function() {
                return 'modules/product/ngProductRelated.tpl.html';
            },
            link: function (scope, element, attrs, modelCtrl) {
                scope.$watch('productlist', function(newVal, oldVal){
                    if(newVal != oldVal){
                        $('.slider-popular').bxSlider({
                            mode: 'horizontal',
                            captions: true,
                            auto: true,
                            autoControls: false,
                            stopAutoOnClick: true,
                            speed: 500,
                            infiniteLoop: true,
                            slideSelector: 'div.item',
                            minSlides: 4,
                            maxSlides: 4,
                            moveSlides: 1,
                            slideWidth: 200
                          });
                    }
                }, true);
            }
        };
    }])
})();