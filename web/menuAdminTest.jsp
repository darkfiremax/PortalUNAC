<%-- 
    Document   : menuAdmin
    Created on : 28-sep-2012, 0:47:44
    Author     : Jonathan
--%>
<%
    String nombre = request.getParameter("nombre");        
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- include CSS & JS files --> 
        <!-- CSS file --> 
        <link rel="stylesheet" type="text/css" href="jMenu.jquery.css" media="screen" /> 
        <link rel="stylesheet" type="text/css" href="jquery-ui-1.8.23.custom.css"/> 
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <!-- jQuery files --> 
        <script src = "jquery-1.8.0.min.js"></script>
        <script src = "jquery-ui-1.8.23.custom.min.js"></script>
        <script src="jMenu.jquery.js"></script>         
        <script type="text/javascript"> 
            $(document).ready(function(){ 
                // simple jMenu plugin called 
                $("#jMenu").jMenu(); 
                // more complex jMenu plugin called 
                $("#jMenu").jMenu({ 
                    ulWidth : 'auto', 
                    effects : { 
                        effectSpeedOpen : 300, 
                        effectTypeClose : 'hide' 
                    }, 
                    animatedText : false 
                }); 
                
                $("menuEstudianeteOP1").click(function(){
                    alert(this.value)
                });
            }); 
            
        </script>             
    </head>
    <body>
        <div id='header'>
            <div id='login'>                
            </div>
            <div id='banner'>
               <img id="unac" name="unac" class="unac" src="images/logo_unac.jpg" width="282" height="91" alt="unac">

            </div>
        </div>
        <hr/>
        <!-- First, write your HTML --> 
        <ul id="jMenu"> 
            <li><a class="fNiv">Administración</a>
                <!-- Do not forget the "fNiv" class for the first level links !! --> 
                <ul> 
                    <li class="arrow"></li> 
                    <li><a>Habilitar Usuarios</a></li> 
                    <li><a>Administrar Usuarios</a></li> 
                    <li><a>Asociar estudiantes</a>                             	
                </ul>	
            </li>
            <li><a class="fNiv">Informes</a>
                <!-- Do not forget the "fNiv" class for the first level links !! --> 
                <ul> 
                    <li class="arrow"></li> 
                    <li><a>Consultar Logs</a></li>                     
                </ul>	
            </li>
        </ul>	
        <hr/>
        <div id='content' style='text-align:center'>            
            <p class='mensajeT2'>Hola <%=nombre%>, has ingresado exitosamente !</p><br>
            <a href='/UNAC'>Volver</a>
        </div>        
    </body>
</html>
