<%-- 
    Document   : ListaUsuarios.jsp
    Created on : 08-oct-2012, 1:14:08
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*,Entidades.Usuario" %>

<%
//Obtener el arreglo de estudiantes enviado en la solicitud
    ArrayList<Usuario> usuarios = (ArrayList<Usuario>) request.getAttribute("usuarios");
    int contador = 0;

    //mensaje de datos eliminados
    /*
     * equivalente a if(request.getAttribute("mensaje")==null) mensaje=""; else
     * mensaje=request.getAttribute("mensaje");
     */
    String mensaje = request.getAttribute("mensaje") == null ? "" : (String) request.getAttribute("mensaje");
    String estado = "";
    String genero ="";
    
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
        <script type="text;/javascript"> 
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
        <table align="center">            
            <caption>Usuarios Registrados</caption>
            <thead>
                <tr>
                    <th scope="col">email</th>
                    <th scope="col">Clave</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Teléfono</th>
                    <th scope="col">Género</th>
                    <th scope="col">Perfil</th>
                    <th scope="col">Estado</th>
                </tr>
            </thead>
            <%
                if (usuarios != null && usuarios.size() > 0) {
                    for (Iterator iterator = usuarios.iterator(); iterator.hasNext();) {
                        Usuario u = (Usuario) iterator.next();
                        contador++;
            %>
            <tbody>
                <%
                    if (contador % 2 == 0) {
                %>
                <tr>
                    <%} else {%>
                <tr class="odd">                               
                    <%}%>
                    <td>
                        <%= u.getEmail()%>
                    </td>
                    <td>
                        <%= u.getClave()%>
                    </td>
                    <td>
                        <%= u.getNombre()%>
                    </td>
                    <td>
                        <%= u.getApellido()%>
                    </td>
                    <td>
                        <%= u.getTelefono()%>
                    </td>
                    <td>
                        <%= u.getGenero()%>
                    </td>
                    <td>
                        <%= u.getidPerfil()%>
                    </td>
                    <td>
                        <%
                            if (u.getEstado() == 0) 
                                estado = "Activo";
                             else
                                estado = "Inactivo";
                        %>
                        <%=estado%>
                    </td>
                    <td>
                        <a href="ControladorUsuarios?accion=eliminar&ID=<%=u.getEmail()%>">Eliminar</a>
                    </td>
                    <td>
                        <a href="ControladorUsuarios?accion=editar&ID=<%=u.getEmail()%>">Editar</a>
                    </td>
                </tr>
            </tbody>
            <%
                    }
                }
            %>

        </table>
        <br>
        <p style="text-align:center;color: red">
            <%=mensaje%>
        </p>

        <hr>
    <center>
    </center>
</body>
</html>