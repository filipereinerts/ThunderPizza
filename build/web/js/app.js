var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function($routeProvider, $locationProvider){
   
    $locationProvider.hashPrefix('');
    
    $routeProvider
        
        .when('/', {
          templateUrl: 'views/home.html',
          controller: 'mainController'
        })

        .when('/register', {
          templateUrl: 'views/register.html',
          controller: 'registerController'
        })

        .when('/login', {
          templateUrl: 'views/login.html',
          controller: 'loginController'
        })
        .when('/cardapio', {
          templateUrl: 'views/cardapio.html',
          controller: 'mainController'
        })
        .when('/montagem', {
          templateUrl: 'views/montagem.html',
          controller: 'montagemController'
        })
        .when('/pedidos', {
          templateUrl: 'views/pedidos.html',
          controller: 'mainController'
        })
        .when('/registro', {
          templateUrl: 'views/registro.html',
          controller: 'mainController'
        })
        
        .otherwise ({ redirectTo: '/' });
    
});

myApp.controller('mainController', ['$scope', function($scope){

        
        
}]);

myApp.controller('loginController', ['$scope', function ($scope){
    
    $scope.models = {};
    $scope.models.usuario = null;
    $scope.models.senha = null;
    
    $scope.submit = function (){
      alert("ok");  
    };
    
}]);

myApp.controller('registerController', ['$scope', function ($scope){
    $scope.submit = function(){
      alert("ok");  
    };
}]);


myApp.controller('montagemController', ['$scope', function($scope){

    $scope.tabSelected = 0;
    
    $scope.isSelected = function(index){
        
        return this.tabSelected === index ? 'active' : ''
        
    };
    
    $scope.nextTab = function(){
        
        this.tabSelected++;
        
    }
    $scope.prevTab = function(){
        
        this.tabSelected--;
        
    }
        
}]);



