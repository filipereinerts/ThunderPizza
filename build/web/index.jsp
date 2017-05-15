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
        <script src="/ThunderPizza/jquery-3.2.0.min.js"></script>
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
    
        <jsp:include page = "navbar.html" />
        <div class="col-lg-6 col-md-6 col-md-offset-3 col-lg-offset-3" style="margin-top:  15%">
       
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-top: 25px">
                <a class="btn btn-danger btn-block btn-lg" href="montagem">Monte sua Pizza</a> 
            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-top: 25px">
                <a class="btn btn-danger btn-block btn-lg" href="listagemPedidos.jsp">Acompanhe seu pedido</a> 
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top: 25px">
                <a class="btn btn-danger btn-block btn-lg" href="cardapioPage.jsp">Cardápio</a>
            </div>
       
        </div>
       
        
    
</html>
