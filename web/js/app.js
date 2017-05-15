var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function($routeProvider, $locationProvider){
   
    $locationProvider.html5Mode(true);
    
    $routeProvider
        
        .when('/', {
          templateUrl: 'views/home.html',
          controller: 'mainController'
        })

        .when('/register', {
          templateUrl: 'views/register.html',
          controller: 'mainController'
        })

        .when('/login', {
          templateUrl: 'views/login.html',
          controller: 'mainController'
        })
        .when('/cardapio', {
          templateUrl: 'views/cardapio.html',
          controller: 'mainController'
        })
        .when('/montagem', {
          templateUrl: 'views/montagem.html',
          controller: 'mainController'
        })
        
        .otherwise ({ redirectTo: '/' });
    
});

myApp.controller('mainController', ['$scope', function($scope){

        
        
}]);


