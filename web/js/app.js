var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function($routeProvider, $locationProvider){
   
    $locationProvider.hashPrefix('');
    
    $routeProvider
        
        .when('/', {
          templateUrl: 'views/home.html',
          controller: 'mainController'
        })
        .when('/registro', {
          templateUrl: 'views/registro.html',
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
        .when('/cliente', {
          templateUrl: 'views/listacliente.html',
          controller: 'mainController'
        })
        .when('/produto', {
          templateUrl: 'views/listaproduto.html',
          controller: 'mainController'
        })
         .when('/usuario', {
          templateUrl: 'views/listausuario.html',
          controller: 'mainController'
        })
        
        .otherwise ({ redirectTo: '/' });
    
});

myApp.controller('mainController', ['$scope', function($scope){

        
        
}]);

myApp.controller('registerController', ['$scope', '$http', function($scope, $http){

    $scope.models = {};
    $scope.models.nome = "oi";
    $scope.models.cpf = "oi";
    $scope.models.email = "oi";
    $scope.models.telefone = "oi";
    $scope.models.celular = "oi";
    $scope.models.cidade = "oi";
    $scope.models.bairro = "oi";
    $scope.models.cep = "oi";
    $scope.models.logradouro = "oi";
    $scope.models.numero = "oi";
    $scope.models.complemento = "oi";
    $scope.models.senha = "oi";
    $scope.models.tipo = "oi";
    
    $scope.submit = function(){
        
        $http({
            method: 'POST',
            url: "/api/usuario",
            data: $scope.models
       }); 
        
    };
        
}]);

myApp.controller('loginController', ['$scope', function ($scope){
    
    $scope.models = {};
    $scope.models.usuario = null;
    $scope.models.senha = null;
    
    $scope.submit = function (){
      alert("ok");  
    };
    
}]);

myApp.controller('montagemController', ['$scope', function($scope){

    $scope.tabSelected = 0;
    
    $scope.isSelected = function(index){
        
        return this.tabSelected === index ? 'active' : '';
        
    };
    
    $scope.nextTab = function(){
        
        this.tabSelected++;
        
    }
    $scope.prevTab = function(){
        
        this.tabSelected--;
        
    }
        
}]);



