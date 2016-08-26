angular
    .module('app', ['ui.router', 'templates'])
    (function ($stateProvider, $urlRouterProvider) {
    $stateProvider
       .state('authors', {
        url: '/authors',
        templateUrl: '.html',
        controller: 'AuthorsController as vm'
      })

