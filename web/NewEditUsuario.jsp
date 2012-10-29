<%-- 
    Document   : NewEditUsuario
    Created on : 11-oct-2012, 23:08:39
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Entidades.*"%>
<%
//Parámetros de entrada
    Usuario e = (Usuario) request.getAttribute("usuario");

    String nombre = "";
    String apellido = "";
    String email = "";
    String clave = "";
    String telefono = "";
    String genero = "";
    String perfil = "";
    String estado = "";

    String accion = "insertar";//por defecto es un nuevo registro
    if (e != null) //si el usuario no es nulo significa que es modificación
    {
        nombre = e.getNombre();
        apellido =e.getApellido();
        email = e.getEmail();
        clave = e.getClave();
        telefono = e.getTelefono();
        genero = e.getGenero();
        perfil = Integer.toString(e.getidPerfil());
        accion = "modificar";        
        estado=Integer.toString(e.getEstado());
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Jonathan Pacheco - UNAC</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <link rel="stylesheet" href="bluedream.css" type="text/css" >        
        <link rel="stylesheet" type="text/css" href="jMenu.jquery.css" media="screen" /> 
        <link rel="stylesheet" type="text/css" href="jquery-ui-1.8.23.custom.css"/> 
        <script language= " javascript" src = "javascript.js" ></script>
        <script src = "jquery-1.8.0.min.js"></script>
        <script src = "myscripts.js"></script>
        <script src = "jquery-ui-1.8.23.custom.min.js"></script>
        <script src="../lib/jquery.js" type="text/javascript"></script>
        <script src="jquery.validate.js" type="text/javascript"></script>
    <body>
        <p class="unac"</p>
        <header id="site_head">
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
                
                $("#menuAdminOP1").click(function(){
                    alert($("#menuAdminOP1").html())
                });
            }); 
        </script>   
    </head>
    <body>
        <div id='header'>
            <div id='login'>                
            </div>
            <div id='banner'>
                <img src='images/logo_unac.jpg' width='282' height='91' alt='logo_unac'/>
            </div>
        </div>
        <jsp:include page="menuAdmin.jsp"/>        
        <br>
        <hr>        
        <div id="Main-formulario2">            
            <h2>Información del Usuario</h2>
            <form method="post" name="frm" id="frmRegistro" action="ControladorUsuarios">
                <div class="campo">
                    <label class="etiquetaNew">Nombre:</label>
                    <input type="text" class="texto" id="Nombre" name="Nombre" value="<%=nombre%>"/>
                </div>
                <div class="campo">
                    <label class="etiquetaNew">Apellido:</label>
                    <input type="text" class="texto" id="Apellido" name="Apellido" value="<%=apellido%>"/>
                </div>
                <div class="campo2">
                    <label class="etiquetaNew">Correo Electrónico:</label>
                    <input type="text" class="texto" id="Correo" name="Correo" value="<%=email%>" disabled=""/>
                </div>
                <div class="campo">
                    <label class="etiquetaNew">Contraseña:</label>
                    <input type="text" class="texto" id="Pass" name="Pass" value="<%=clave%>"/>
                </div>                
                <div class="campo">
                    <label class="etiquetaNew">Teléfono:</label>
                    <input type="text" class="texto" id="Tel" name="Tel" value="<%=telefono%>"/>
                </div>                    
                <div class="campo">
                    <label class="etiquetaNew">Género:</label>                    
                    <select name="genero" class="texto" id="genero">
                        <option value="2">Seleccione el Género</option>
                        <%if (genero.equals("0")) {%>
                        <option value="0" selected>Femenino</option>
                        <option value="1">Masculino</option>
                        <%} else {
                        %>
                        <option value="0" >Femenino</option>
                        <option value="1" selected>Masculino</option>
                        <%}%>
                    </select>
                </div>
               <%-- <div class="campo">
                    <label class="etiquetaNew">Perfil:</label>
                   <select name="Perfil" class="texto" id="Perfil">
                  <option value="0">Seleccione el Perfil</option>
                  <%if (perfil.equals("1")) {%>
                   <option value="1" selected>Administrador</option>
                    <option value="2" >Estudiantes</option>
                    <option value="3">Profesor</option>
                    <option value="4">Invitado</option>
                  <%} else if (perfil.equals("2")){%>
                    <option value="1">Administrador</option>
                    <option value="2" selected>Estudiantes</option>
                    <option value="3">Profesor</option>
                    <option value="4">Invitado</option>
                   <%} else if (perfil.equals("3")){%>
                   <option value="1">Administrador</option>
                    <option value="2" >Estudiantes</option>
                    <option value="3" selected>Profesor</option>
                    <option value="4">Invitado</option>
                   
                   <%} else if (perfil.equals("4")){%>
                   <option value="1">Administrador</option>
                    <option value="2" >Estudiantes</option>
                    <option value="3" >Profesor</option>
                    <option value="4" selected>Invitado</option>
                    <%}%>
                    <input type="text" class="texto" id="Perfil" name="Perfil" value="<%=perfil%>"/> --%>
                </div> 
                <div class="campo">
                    <label class="etiquetaNew">Perfil:</label>
                    <input type="text" class="texto" id="Perfil" name="Perfil" value="<%=perfil%>"/>
                </div>                        
                <div class="campo">
                    <label class="etiquetaNew">Estado:</label>
                    <input type="text" class="texto" id="Estado" name="Estado" value="<%=estado%>"/>
                </div>  
                <div style="left: 40%;position: relative">
                    <br>
                    <input type="submit" value="Modificar" name="btnModificar" id="btnModificar" class="boton"/>
                    <br>
                    <br>                                            
                </div>
                <input type="hidden" name="accion" value="<%=accion%>" />
                <input type="hidden" name="id" value="<%=email%>" />
            </form>
        </div>
        <hr>
    </body>
</html>
