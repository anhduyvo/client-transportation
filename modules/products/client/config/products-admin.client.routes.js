(function () {
  'use strict';

  angular
    .module('products.admin.routes')
    .config(routeConfig);

  routeConfig.$inject = ['$stateProvider'];

  function routeConfig($stateProvider) {
    $stateProvider
      .state('admin.products', {
        abstract: true,
        url: '/products',
        template: '<ui-view/>'
      })
      .state('admin.products.list', {
        url: '',
        templateUrl: '/modules/products/client/views/admin/list-products.client.view.html',
        controller: 'ProductsAdminListController',
        controllerAs: 'vm',
        data: {
          roles: ['admin']
        }
      })
      .state('admin.products.create', {
        url: '/create',
        templateUrl: '/modules/products/client/views/admin/form-article.client.view.html',
        controller: 'ProductsAdminController',
        controllerAs: 'vm',
        data: {
          roles: ['admin']
        },
        resolve: {
          articleResolve: newArticle
        }
      })
      .state('admin.products.edit', {
        url: '/:articleId/edit',
        templateUrl: '/modules/products/client/views/admin/form-article.client.view.html',
        controller: 'ProductsAdminController',
        controllerAs: 'vm',
        data: {
          roles: ['admin']
        },
        resolve: {
          articleResolve: getArticle
        }
      });
  }

  getArticle.$inject = ['$stateParams', 'ProductsService'];

  function getArticle($stateParams, ProductsService) {
    return ProductsService.get({
      articleId: $stateParams.articleId
    }).$promise;
  }

  newArticle.$inject = ['ProductsService'];

  function newArticle(ProductsService) {
    return new ProductsService();
  }
}());
