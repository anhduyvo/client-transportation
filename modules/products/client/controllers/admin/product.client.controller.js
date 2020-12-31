(function () {
  'use strict';

  angular
    .module('products.admin')
    .controller('ProductsAdminController', ProductsAdminController);

  ProductsAdminController.$inject = ['$scope', '$state', '$window', '$timeout', 'productResolve', 'Authentication', 'Upload', 'Notification'];

  function ProductsAdminController($scope, $state, $window, $timeout, product, Authentication, Upload, Notification) {
    var vm = this;
    
    vm.product = product;
    vm.authentication = Authentication;
    vm.form = {};
    vm.remove = remove;
    vm.save = save;
    vm.upload = upload;

    // Remove existing product
    function remove() {
      if ($window.confirm('Are you sure you want to delete?')) {
        vm.product.$remove(function() {
          $state.go('admin.products.list');
          Notification.success({ message: '<i class="glyphicon glyphicon-ok"></i> product deleted successfully!' });
        });
      }
    }

    // Save product
    function save(isValid) {
      if (!isValid) {
        $scope.$broadcast('show-errors-check-validity', 'vm.form.productForm');
        return false;
      }

      // Create a new product, or update the current instance
      vm.product.createOrUpdate()
        .then(successCallback)
        .catch(errorCallback);

      function successCallback(res) {
        $state.go('admin.products.list'); // should we send the User to the list or the updated product's view?
        Notification.success({ message: '<i class="glyphicon glyphicon-ok"></i> product saved successfully!' });
      }

      function errorCallback(res) {
        Notification.error({ message: res.data.message, title: '<i class="glyphicon glyphicon-remove"></i> product save error!' });
      }
    }

    // upload product image
    function upload(dataUrl) {
      
      Upload.upload({
        url: '/api/products/image',
        data: {
          newProductImage: dataUrl
        }
      }).then(function (response) {
        $timeout(function () {
          onSuccessItem(response.data);
        });
      }, function (response) {
        if (response.status > 0) onErrorItem(response.data);
      }, function (evt) {
        vm.progress = parseInt(100.0 * evt.loaded / evt.total, 10);
      });
    };

    // Called after the user has successfully uploaded a new picture
    function onSuccessItem(response) {
      // Show success message
      Notification.success({ message: '<i class="glyphicon glyphicon-ok"></i> Successfully changed product image' });

      // Populate user object
      vm.user = Authentication.user = response.user;
      vm.product.image_url = response.image_url;

      // Reset form
      vm.fileSelected = false;
      vm.progress = 0;
    }

    // Called after the user has failed to upload a new picture
    function onErrorItem(response) {
      vm.fileSelected = false;
      vm.progress = 0;

      // Show error message
      Notification.error({ message: response.message, title: '<i class="glyphicon glyphicon-remove"></i> Failed to change product image' });
    }
  }
}());
