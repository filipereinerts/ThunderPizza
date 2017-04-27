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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="/WebApplication2/jquery-3.2.0.min.js"></script>

        <link rel="shortcut icon" href="TPsemfundo.png.ico" type="image/x-icon" />
        <link rel="icon" href="TPsemfundo.png.ico" type="image/x-icon" />
        
        <style>
            .text-navbar {
               color: #ffffff;
            }
        </style>
        
        
    </head>
    <body>
        
        
    <jsp:include page = "navbar.html" />
                 
    <form method="POST" action="/ThunderPizza/OrderForm" class="group-border form-horizontal">
        <div id="tabs-montagem">

            <ul class="nav nav-tabs" data-tabs="tabs">
                <li class="active"><a data-toggle="tab" id="ttamanho" href="#tab-tamanho">Tamanho</a></li>
                <li><a data-toggle="tab" id="tsabores" href="#tab-sabores">Sabores</a></li>
                <li><a data-toggle="tab" id="topcionais" href="#tab-opcionais">Opcionais</a></li>
                <li><a data-toggle="tab" id="tfinalizacoes"href="#tab-finalizacoes">Finalizações</a></li>
            </ul>

            <div class="tab-content" id="tabs">
                <div class="tab-pane active" id="tab-tamanho">
                    <jsp:include page = "montagemPageTamanho.jsp" />
                </div>

                <div class="tab-pane" id="tab-sabores">
                    <jsp:include page = "montagemPageSabores.jsp" />
                </div>

                <div class="tab-pane" id="tab-opcionais">
                    <jsp:include page = "montagemPageOpcionais.jsp" />    
                </div>

                <div class="tab-pane" id="tab-finalizacoes">
                    <jsp:include page = "montagemPageFinalizacoes.jsp" />    
                </div>

            </div>

        </div>
    </form>     
             
    </body>
    
    <script>
        
        $(document).ready(function(){
            
            var sabor = null;

            $(".radio-sabores").change(function(){
        
                sabor = $('.radio-sabores:radio:checked').val();
                
                
                $('.checkbox-sabores').each(function(k, e){
                    
                    $(e).prop('checked', '');
                    
                });
                
            });

            $('.checkbox-sabores').change(function(){
                
                if(sabor == null){
                    
                    $(this).prop('checked', '');
                    return;
                    
                }
                
                var qtd_sabores = $('.checkbox-sabores:checkbox:checked').length;
                
                if(qtd_sabores > sabor){
                    
                    $(this).prop('checked', '');
                    return;
                }
                
            });
            
            $('#btn-next-tamanho').click(function(){
                
               $('#tsabores').tab('show');
            });
            
            
            $('#btn-next-sabores').click(function(){
                
               $('#topcionais').tab('show');
            });
            $('#btn-prev-sabores').click(function(){
                
               $('#ttamanho').tab('show');
            });
            
            
            $('#btn-next-opcionais').click(function(){
                
               $('#tfinalizacoes').tab('show');
            });
            $('#btn-prev-opcionais').click(function(){
                
               $('#tsabores').tab('show');
            });
            
            $('#btn-prev-finalizacoes').click(function(){
                
               $('#topcionais').tab('show');
            });
        });
        
    </script>
    
</html>
