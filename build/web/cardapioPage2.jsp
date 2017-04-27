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
        
        
        <link rel="shortcut icon" href="TPsemfade.png.ico" type="image/x-icon" />
        <link rel="icon" href="TPsemfade.png.ico" type="image/x-icon" />
        
        <style>
            .text-navbar {
               color: #ffffff;
            }

            .fade{
                background: white;
                width: 284px;
                margin-left: 20px;
                margin-right: 20px;
                margin-bottom: 5px;
                margin-top: 5px;
                padding: 10px;
                float: left;
                font-size: 8px;
                opacity: 1;
            }
            
            .fade:hover{
                opacity: 0.5;

            }

            #caixa{
                border-left: 2px solid gray;
            }
            
        </style>
        
        
    </head>
    <body>
        
        <jsp:include page="navbar.html" /> 
          
           <h2 class="text-center" style="margin-bottom: 20px">Cardápio</h2>
           
           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_86.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Calabresa</center></h3>
                  
               </div>
           </div>
           

           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_18.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Frango</center></h3>
               </div>
           </div>
           
           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_15.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Marguerita</center></h3>
               </div>
           </div>
           
           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_70.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Sensação</center></h3>
               </div>
           </div>
           
           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_20.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Chocolate Preto</center></h3>
               </div>
           </div>
           
           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_40.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Chocolate Branco</center></h3>
               </div>
           </div>
           
           <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_63.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Camarão</center></h3>
               </div>
           </div>
           
            <div class="fade">
               <div id = "caixa">
                   <img src="pizza-nutella.png" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>Nutella</center></h3>
               </div>
           </div>
           
            <div class="fade">
               <div id = "caixa">
                   <img src="http://www.gopizza.com.br/imagens/card/card_4.jpg" height="250"> <br/>
                   <h3 style="padding: 10px;margin: 0px; border-top: 2px solid gray"><center>6 Queijos</center></h3>
               </div>
           </div>                     
          
       </div>
       
    </body>
</html>
