(function () {
  'use strict';

  angular
    .module('products')
    .controller('ProductsController', ProductsController);

  ProductsController.$inject = ['productResolve', 'Authentication'];

  function ProductsController(product, Authentication) {
    var vm = this;

    vm.product = product;
    vm.authentication = Authentication;

  }
}());
