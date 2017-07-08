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
          templateUrl: 'views/montagem2.html',
          controller: 'montagemController'
        })
        .when('/montagem2', {
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
        
        window.location.hash = "/login";
        
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
       
        $http({
            method: 'POST',
            url: "/api/usuario",
            data: $scope.models
        }).then(function() {
            window.location.href = "/";
        }); 
       
    };
    
}]);

myApp.controller('montagemController', ['$scope', '$http', function($scope, $http){
        
    $scope.models = {};
    $scope.models.tamanho = '';
    $scope.models.quantidadeSabores = '';
    $scope.models.observacoes = '';
    
    $scope.models.saboresEscolhidos = [];
    $scope.models.bebidasEscolhidas = [];
    $scope.models.bordasEscolhidas = [];
    $scope.models.adicionaisEscolhidos = [];

    $scope.models.bordasPossiveis = [
        
        {
            "id": 1,
            "nome": 'Chocolate Branco'
        },
        {
            "id": 2,
            "nome": 'Chocolate Preto'
        },
        {
            "id": 3,
            "nome": 'Catupiry'
        }
        
    ];

    $scope.models.adicionaisPossiveis = [
        
        {
            "id": 1,
            "nome": 'Bacon'
        },
        {
            "id": 2,
            "nome": 'Cheddar'
        },
        {
            "id": 3,
            "nome": 'Catupiry'
        }
        
    ];
    
    $scope.models.bebidasPossiveis = [
        
        {
            "id": 1,
            "nome": 'Coca Cola'
        },
        {
            "id": 2,
            "nome": 'Fanta Uva'
        },
        {
            "id": 3,
            "nome": 'Guaraná'
        }
        
    ];
    
    $scope.models.saboresPossiveis = 
        
        {
            
            "Tradicionais" : [
                {
                    "id": 1,
                    "nome": 'Calabresa'  
                },
                {
                    "id": 2,
                    "nome": 'Frango'  
                },
                {
                    "id": 3,
                    "nome": 'Marguerita'  
                }   
            ],
            
            "Doces" : [
                {
                    "id": 4,
                    "nome": 'Sensação'  
                },
                {
                    "id": 5,
                    "nome": 'Chocolate Preto'  
                },
                {
                    "id": 6,
                    "nome": 'Chocolate Branco'  
                }   
            ],
            
            "Especiais" : [
                {
                    "id": 7,
                    "nome": 'Camarão'  
                },
                {
                    "id": 8,
                    "nome": 'Nutella'  
                },
                {
                    "id": 9,
                    "nome": '6 Queijos'  
                }   
            ]
        };
        
        $scope.models.selectSabor = function(saborId){
            
            var idx = $scope.models.saboresEscolhidos.indexOf(saborId);

            if (idx > -1) {
              
                $scope.models.saboresEscolhidos.splice(idx, 1);
                
            } else {
                
                if($scope.models.saboresEscolhidos.length >= $scope.models.quantidadeSabores) return;
                
                $scope.models.saboresEscolhidos.push(saborId);
              
            }
        
        };
        
        $scope.models.selectBebida = function(bebidaId){
            
            var idx = $scope.models.bebidasEscolhidas.indexOf(bebidaId);

            if (idx > -1) {
                $scope.models.bebidasEscolhidas.splice(idx, 1);
            } else {
                $scope.models.bebidasEscolhidas.push(bebidaId);
            }
        
        };
        
        $scope.models.selectAdicional = function(adicionalId){
            
            var idx = $scope.models.adicionaisEscolhidos.indexOf(adicionalId);

            if (idx > -1) {
                $scope.models.adicionaisEscolhidos.splice(idx, 1);
            } else {
                $scope.models.adicionaisEscolhidos.push(adicionalId);
            }
        
        };
        
        $scope.models.selectBorda = function(bordaId){
            
            var idx = $scope.models.bordasEscolhidas.indexOf(bordaId);

            if (idx > -1) {
                $scope.models.bordasEscolhidas.splice(idx, 1);
            } else {
                $scope.models.bordasEscolhidas.push(bordaId);
            }
        
        };
        
        $scope.submit = function(){
            
            var dados = {};
            dados.tamanho = $scope.models.tamanho;
            dados.sabores = JSON.stringify($scope.models.saboresEscolhidos);
            dados.bebidas = JSON.stringify($scope.models.bebidasEscolhidos);
            dados.bordas = JSON.stringify($scope.models.bordasEscolhidos);
            dados.adicionais = JSON.stringify($scope.models.adicionaisEscolhidos);
            dados.observacoes = $scope.models.observacoes;
            
            $http({
                method: 'POST',
                url: "/api/pedido",
                data: dados
            }).then(function() {
                window.location.href = "/";
            }); 
            
        }
        
}]);



