<%-- 
    Document   : index
    Created on : Mar 30, 2017, 8:40:59 AM
    Author     : matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ThunderPizza</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thunder Pizza</title>
        <script src="/WebApplication2/jquery-3.2.0.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        
        <link rel="shortcut icon" href="TPsemfundo.png.ico" type="image/x-icon" />
        <link rel="icon" href="TPsemfundo.png.ico" type="image/x-icon" />
        
        <style>
            .text-navbar {
               color: #ffffff;
            }
        </style>
        
        
    </head>
    <body>
        
       <jsp:include page="navbar.html" />
       
        <h2 class="text-center">Lista de Pedidos</h2>
        
        <div class="col-lg-10 col-md-10 col-lg-offset-1 col-md-offset-1" style="border: 2px solid black; padding: 10px; margin-top: 10px">
            
            <div class="col-lg-2 col-md-2">
                Pedido Nº #2
            </div>
            
            <div class="col-lg-4 col-md-4">
                Status: A caminho<br/>
                Tamanho: Média
            </div>
            
            <div class="col-lg-4 col-md-4">
                Sabores: Frango e Bacon<br/>
                Adicionais: Coca Cola 2L, Borda de Catupiry
            </div>
            
            <div class="col-lg-2 col-md-2">
                <a class="btn btn-danger">Cancelar</a>
                <a class="btn btn-warning">Detalhes</a>
            </div>
            
        </div>
        
        <div class="col-lg-10 col-md-10 col-lg-offset-1 col-md-offset-1" style="border: 2px solid black; padding: 10px; margin-top: 10px">
            
            <div class="col-lg-2 col-md-2">
                Pedido Nº #1
            </div>
            
            <div class="col-lg-4 col-md-4">
                Status: Saciado<br/>
                Tamanho: Broto
            </div>
            
            <div class="col-lg-4 col-md-4">
                Sabores: Calabresa<br/>
                Adicionais: Borda de Chocolate
            </div>
            
            <div class="col-lg-2 col-md-2">
                <a class="btn btn-warning">Detalhes</a>
            </div>
            
        </div>
        
    </body>
</html>
