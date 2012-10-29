<%-- 
    Document   : Error
    Created on : 07-sep-2012, 2:10:01
    Author     : Jonathan
--%>
<%
    String mensaje = (request.getAttribute("mensaje")!=null)? (String)request.getAttribute("mensaje"):"Error!!";        
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Jonathan Pacheco - UNAC</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language= " javascript" src = "javascript.js" ></script>
<script src = "jquery-1.8.0.min.js"></script>
<script src = "myscripts.js"></script>
<script src = "jquery-ui-1.8.23.custom.min.js"></script>
<script src="../lib/jquery.js" type="text/javascript"></script>
<script src="jquery.validate.js" type="text/javascript"></script>

    <body>
<p class="unac"</p>
<form2>
<header id="site_head">
<br>
		<div class="header_cont">
		  <form name="form9" method="post" action="validar" >
       <p>      
          <img id="unac" name="unac" class="unac" src="images/logo_unac.jpg" width="282" height="91" alt="unac">
         
                   </div>
        </div>
        <div id='content' style='text-align:center'>
            <h1>Validación del Login </h1>
            <p class='mensajeT1'><%=mensaje%></p><br>
            <a href='/UNAC2'>Home</a>
        </div>
    </body>
</html>
