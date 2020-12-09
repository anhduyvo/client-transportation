(function () {
  'use strict';

  angular
    .module('products.routes')
    .config(routeConfig);

  routeConfig.$inject = ['$stateProvider'];

  function routeConfig($stateProvider) {
    $stateProvider
      .state('products', {
        abstract: true,
        url: '/products',
        template: '<ui-view/>'
      })
      .state('products.list', {
        url: '',
        templateUrl: '/modules/products/client/views/list-products.client.view.html',
        controller: 'ProductsListController',
        controllerAs: 'vm',
        data: {
          pageTitle: 'Products List'
        }
      })
      .state('products.view', {
        url: '/:articleId',
        templateUrl: '/modules/products/client/views/view-article.client.view.html',
        controller: 'ProductsController',
        controllerAs: 'vm',
        resolve: {
          articleResolve: getArticle
        },
        data: {
          pageTitle: 'Article {{ articleResolve.title }}'
        }
      });
  }

  getArticle.$inject = ['$stateParams', 'ProductsService'];

  function getArticle($stateParams, ProductsService) {
    return ProductsService.get({
      articleId: $stateParams.articleId
    }).$promise;
  }
}());
