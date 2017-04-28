<%-- 
    Document   : login
    Created on : Mar 28, 2017, 10:40:25 AM
    Author     : matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        
        
    </head>
    
    <style>
         body {
                background-image: url(wpizza);
/*                background-attachment: fixed;
                background-repeat: no-repeat;
                background-color: #d9d9d9;*/
            }
        .text-navbar {
               color: #ffffff;
            }
        
    </style>
    
    <body>
        
    <jsp:include page = "navbar.html" />
    
        <div class="panel-heading block" !important">
            
            <a href="index.jsp">
                <img border="0" alt="ThunderPizza" src="TPsemfundo.png"width="400" height="400" style="margin-left:35%" >
            </a>
            
                
        </div>
        <div class='col-lg-4 col-lg-offset-4'>
            
            <div class='panel'>
                <div class='panel-heading' style="background-color: #d9534f !important">
                    <h3 class='panel-title' style="color: #ffffff; font-weight: bold">
                        Login
                    </h3>
                </div>
                <div class='panel-body'>
                    <form method="POST" action="/ThunderPizza/LoginForm">
                       <div class='form-group'>
                           <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> <input name="email" class="form-control" placeholder="E-mail" aria-describedby="basic-addon1"> </div>
                        </div>
                        <div class='form-group'>
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> <input type="password" name="senha" class="form-control" placeholder="Senha" aria-describedby="basic-addon1"> </div>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="teste" value="conectado">Mantenha-me Conectado</label>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-danger btn-block" type="submit">Entra</button>
                        </div>
                    </form>
                </div>
            </div>
            
            
            
            
        </div>
        
       
    </body>
    
    <script>
        
        $(document).ready(function(){
           
          
               
           });
            
        });
        
    </script>
    
</html>





