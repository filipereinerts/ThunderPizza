<%-- 
    Document   : register
    Created on : Mar 28, 2017, 10:40:25 AM
    Author     : matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thunder Pizza</title>
        <script src="/ThunderPizza/jquery-3.2.0.min.js"></script>
        <script src="/ThunderPizza/jquery.maskedinput.min.js"></script>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        
        <link rel="shortcut icon" href="TPsemfundo.png.ico" type="image/x-icon" />
        <link rel="icon" href="TPsemfundo.png.ico" type="image/x-icon" />
        
        
        
    </head>
    
    <style>
         body {
                background-image: url(wpizza);
                background-color: #d9d9d9;
            }   
        
        .text-navbar {
               color: #ffffff;
         }
        
    </style>
    
    <body>

        <%@include file="navbar.html" %>
        <div class='col-lg-6 col-lg-offset-3' style="margin-top: 2%">
            
            <div class='panel'>
                <div class='panel-heading' style="background-color: #d9534f">
                    <h3 class='panel-title' style="color: #ffffff; font-weight: bold">
                        Cadastro
                    </h3>
                </div>
                <div class='panel-body'>
                    <form class="form-horizontal group-border stripped" method="POST" action="/ThunderPizza/RegisterForm">
                        
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                <label class="control-label">Nome</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input id="nome" name="nome" type="text" class="form-control">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                <label class="control-label">Telefone</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input id="telefone" name="telefone" type="text" class="form-control">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                  <label class="control-label">E-mail</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                  <label class="control-label">CPF</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input id="cpf" type="text" class="form-control">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                  <label class="control-label">Endereço</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                  <label class="control-label">Senha</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input type="password" id="password" class="form-control">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-3 col-md-3">
                                  <label class="control-label">Confirmar senha</label>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <input type="password" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="text-center">
                                <div class="checkbox">
                                    <label><input type="checkbox" name="checkBoxAceitar" value="aceito">Aceito os termos de serviço e política de privacidade</label>
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="form-group">
                            
                            <div class="form-group col-lg-10">
                                <button class="btn btn-danger btn-block col-lg-offset-2" type="submit">Cadastrar</button>
                            </div>
                            
                        </div>
                        
                    </form>
                </div>
            </div>
            
            
            
            
        </div>
        
       
    </body>
    
    <script>
        
        $(document).ready(function(){
           
        
            
        });
        
        jQuery(function($){
            $("#telefone").mask("99-999999999");
            $("#cpf").mask("999.999.999-99");
        });
        
    </script>
    
</html>





