<%-- 
    Document   : index
    Created on : 05-sep-2012, 21:03:21
    Author     : Jonathan
--%>
<%
    String nombre = request.getParameter("correo");
    Integer guardo = (Integer) request.getAttribute("guardoOK");
    String mensaje = "";
    String mensaje2 = "";
    String accion = "insertar";//la acción será un nuevo registro 
    if (nombre != null && guardo == null) {
        mensaje = "Usuario y/o Contraseña incorrecta!";
    }
    if (guardo != null) {
        mensaje2 = "Registro ingresado exitosamente!";
    }
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
        <link rel="stylesheet" type="text/css" href="jMenu.jquery.css" media="screen" /> 
        <script src = "jquery-1.8.0.min.js"></script>
        <link rel="stylesheet" type="text/css" href="jquery-ui-1.8.23.custom.css"/> 
        <script src = "jquery-ui-1.8.23.custom.min.js"></script>
        <script src="../lib/jquery.js" type="text/javascript"></script>
        <script src="jquery.validate.js" type="text/javascript"></script>
        <script src="jMenu.jquery.js"></script> 
    <body>
        <p class="unac"</p>
        <header id="site_head">
            <br>
            <div class="header_cont">
                 <form name="form9" id="login" method="POST" action="Validar" >
                    <p>      
                        <img id="unac" name="unac" class="unac" src="images/logo_unac.jpg" width="282" height="91" alt="unac">

                        Correo Electrónico
                        <input type="text" name="correo" id="correo">
                        Contraseña
                        <input type="password" name="contrasena" id="contrasena">
                        <input type="button" value="Iniciar" name="btnIn" class="boton" id="btnIn"/><br>
                        <br><a href="Validar?accion=0">Ir a la UNAC</a><br>
                </form>
                <div>
                </div>
                </p>
                 <a href="#" id="recPass">¿Has olvidado tu contraseña?</a>  
                <b><center><font color="RED"><%=mensaje%></font></center></b>	 
                
                <blockquote>
                    <blockquote>
                        <div id="boxes">
                    </blockquote>
                </blockquote>
                <div></div>
            </div>
        </header>
                <br>
                <br>
                <br>
                <br>
        <div id="main_content">
            
            <br>
                <br>
                <br>
                <br><section id="last_posts">
                <header class="section_tit">
                </header>
                <div class="single_post">
                                     <div class="accordion">
                    <h3>Misión</h3>
                        <p>La Corporación Universitaria Adventista reconoce a Dios como Creador, Redentor y Sustentador del hombre y del universo; y en armonía con los principios filosóficos y educativos inspirados por el Espíritu Santo, evidenciados en la naturaleza, ejemplificados por Jesucristo, expuestos en las Sagradas Escrituras y tal como los profesa la iglesia Adventista del Séptimo Día, nuestra Institución declara como su misión propiciar y fomentar una significativa relación del hombre con Dios por medio del trabajo en las diferentes disciplinas del conocimiento. En consecuencia, la Corporación se define como una institución universitaria sin ánimo de lucro que desarrolla su labor educativa enmarcada en el servicio a Dios, la comunidad adventista y la sociedad en general.

                            El trabajo del conocimiento se fundamenta en tres pilares: la formación integral, la cultura investigativa y la excelencia en el servicio,en el que el hombre es el agente principal del proceso educativo que persigue el desarrollo armónico de los aspectos físicos, mentales sociales y espirituales. La misión se desarrollará en procura de los altos niveles de calidad educativa, a través de un personal calificado con un profundo sentido de compromiso, apoyado en el uso óptimo de los recursos físicos, financieros y tecnológicos.</p>
                        <h3>Visión</h3>
                        <p>La Corporación Universitaria Adventista será una universidad completamente accesible a la Iglesia Adventista del Séptimo Día en particular, y a la comunidad en general, con el propósito de preparar ciudadanos para este mundo y para la eternidad.</p>
                        <h3>Perfiles Institucionales</h3>
                        <p>1) <span class="Negra">Una sólida formación cristiana.</span> El egresado es una persona íntegra, con altos ideales fundamentados en valores, con capacidad para servir a la sociedad utilizando los conocimientos adquiridos y aplicando los principios recibidos en su Alma Máter. <br>
                            2) <span class="Negra">Competencia profesional y laboral.</span> El egresado es un profesional de excelencia. Con competencias cognitivas y laborales que le permiten desempeñarse profesionalmente en las áreas del conocimiento para las cuales fue formado. Con capacidad para crear nuevas propuestas de mejoramiento y alternativas de solución a los problemas que se presenten. <br>
                            3)<span class="Negra"> Un compromiso con el servicio.</span> El egresado es un líder servidor. Reconoce en cada ser humano una criatura formada a imagen de Dios y alguien por quien Cristo murió. Por lo tanto, desarrolla una labor social enfocada en el servicio a los demás. <br>
                            4) <span class="Negra">Cuidado personal y de la salud.</span> El egresado reconoce la importancia de mantener su salud física y mental, por ende practica un estilo de vida que incluye la sana alimentación, hábitos de higiene, el ejercicio físico, la recreación y el descanso.</p>
                    </div>
                </div>

                <div class="single_post">
                    <script>        
                        // acordeones
                        $(document).ready(function() {	

                            //select all the a tag with name equal to modal
                            $('a[name=modal]').click(function(e) {
                                //Cancel the link behavior
                                e.preventDefault();
		
                                //Get the A tag
                                var id = $(this).attr('href');
	
                                //Get the screen height and width
                                var maskHeight = $(document).height();
                                var maskWidth = $(window).width();
	
                                //Set heigth and width to mask to fill up the whole screen
                                $('#mask').css({'width':maskWidth,'height':maskHeight});
		
                                //transition effect		
                                $('#mask').fadeIn(1000);	
                                $('#mask').fadeTo("slow",0.8);	
	
                                //Get the window height and width
                                var winH = $(window).height();
                                var winW = $(window).width();
              
                                //Set the popup window to center
                                $(id).css('top',  winH/2-$(id).height()/2);
                                $(id).css('left', winW/2-$(id).width()/2);
	
                                //transition effect
                                $(id).fadeIn(2000); 
	
                            });
	
                            //if close button is clicked
                            $('.window .close').click(function (e) {
                                //Cancel the link behavior
                                e.preventDefault();
		
                                $('#mask').hide();
                                $('.window').hide();
                            });		
	
                            //if mask is clicked
                            $('#mask').click(function () {
                                $(this).hide();
                                $('.window').hide();
                            });			

                            $(window).resize(function () {
	 
                                var box = $('#boxes .window');
 
                                //Get the screen height and width
                                var maskHeight = $(document).height();
                                var maskWidth = $(window).width();
      
                                //Set height and width to mask to fill up the whole screen
                                $('#mask').css({'width':maskWidth,'height':maskHeight});
               
                                //Get the window height and width
                                var winH = $(window).height();
                                var winW = $(window).width();

                                //Set the popup window to center
                                box.css('top',  winH/2 - box.height()/2);
                                box.css('left', winW/2 - box.width()/2);
	 
                            });
	
                        });

                        //Acordeon
 
                        $(document).ready(function(){
	
                            $(".accordion h3:first").addClass("active");
                            $(".accordion p:not(:first)").hide();

                            $(".accordion h3").click(function(){
                                $(this).next("p").slideToggle("slow")
                                .siblings("p:visible").slideUp("slow");
                                $(this).toggleClass("active");
                                $(this).siblings("h3").removeClass("active");
                            });

                        });
                    </script>
                    </head>
                    <div id="content">
                        <div id="Main-formulario">
                            <h2>Registrese en nuestro portal</h2>
                            <form name="formulario" method="POST" id="formularioRegistro" action="ControladorUsuarios">
                                <div class="campo">
                                    <label class="etiqueta">Nombre:</label>
                                    <input type="text" class="texto" name="Nombre" id="Nombre" value=""/>
                                </div>
                                <div class="campo">
                                    <label class="etiqueta">Apellido:</label>
                                    <input type="text" class="texto" name="Apellido"id="Apellido" value="" />                        
                                </div>
                                <div class="campo2">
                                    <label class="etiqueta">Correo Electrónico:</label>
                                    <input type="text" class="texto" name="Correo" id="Correo" value="" />
                                </div>
                                <div class="campo">
                                    <label class="etiqueta">Contraseña:</label>
                                    <input type="password" class="texto" name="Pass"id="Pass" value="" />
                                </div>
                                <div class="campo2">
                                    <label class="etiqueta">Repita la Contraseña:</label>
                                    <input type="password" class="texto" name="Pass2"id="RePass" value="" />
                                </div>
                                <div class="campo">
                                    <label class="etiqueta">Teléfono:</label>
                                    <input type="text" class="texto" name="Tel" id="Tel" value="" />
                                </div>                    
                                <div class="campo">
                                    <label class="etiqueta">Género:</label>
                                    <select name="genero" class="texto" id="genero">
                                        <option value="2">Seleccione el Género</option>
                                        <option value="0">Femenino</option>
                                        <option value="1">Masculino</option>
                                    </select>
                                </div>
                                <div id="btnReg">
                                    <br>
                                    <input type="submit" value="Registrarse" name="btnRegistrar" id="btnRegistrar" class="boton"/>
                                    <br>
                                    <br>                        
                                    <b><font color="RED"><%=mensaje2%></font></b>
                                </div>
                                <input type="hidden" name="accion" value="<%=accion%>" />
                            </form>
                            <div id="capaError">
                                Información mal ingresada, por favor corriga lo siguiente:<br>                    
                                <p id="perror"></p>
                            </div>
                        </div> 
                        <aside><!--sidebar-->
                            <footer class="bottom">
                                <p>Contents and resources released under Creative Commons License.</p>
                                <p>Design and code by Jonathan Pacheco- 2012</p>
                            </footer>
                            <div id="dialog">
                                <p id="ok"></p>
                            </div> 
                            </body>
                            </html>