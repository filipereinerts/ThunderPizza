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
    $scope.models.nome = null;
    $scope.models.cpf = null;
    $scope.models.email = null;
    $scope.models.telefone = null;
    $scope.models.celular = null;
    $scope.models.cidade = null;
    $scope.models.bairro = null;
    $scope.models.cep = null;
    $scope.models.logradouro = null;
    $scope.models.numero = null;
    $scope.models.complemento = null;
    $scope.models.senha = null;
    $scope.models.senha2 = null;
    $scope.models.tipo = 'C';
    
    $scope.submit = function(){
        
        var continuar = true;
        
        angular.forEach($scope.models, function(valor, chave){
           
            if(continuar){
                if(valor === null){
                    alert("Informe corretamente o campo " + chave);
                    continuar = false;
                }
            }

        });
        
        if(!continuar) return;
        
        if($scope.models.senha !== $scope.models.senha2){
            alert("As duas senhas não estão iguais");
        }
        
        delete $scope.models.senha2;
        
        $http({
            method: 'POST',
            url: "/api/usuario",
            data: $scope.models
        }).then(function() {
            window.location.href = "/";
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



