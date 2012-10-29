/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){	
    //Seccion del evento de focus y blur
    $(".texto").focus(function(){
        $(this).addClass("active");   
        
    });
    
    $(".texto").blur(function(){
        $(this).removeClass("active");
        
        if ($("#RePass").attr("value")!="" && $("#Pass").attr("value")!="" && $("#RePass").attr("value")!= $("#Pass").attr("value")){                        
        }
        else{
            $("#perror").html("");
            $("#capaError").css("display","none");
        }
    }); 
    
    //validaciones
    $("#formularioRegistro").submit(function(){           
        var mensajeerror="";
        retorno=false;
        var texto=$("#Nombre").attr("value");
        if (texto =="")
        {
            mensajeerror="Por favor digite el nombre."
            $("#Nombre").addClass("active");
        }
        
        texto=$("#Apellido").attr("value");
        if (texto =="")
        {
            mensajeerror +="<br>Por favor digite el apellido."
            $("#Apellido").addClass("active");
        }
        
        texto=$("#Correo").attr("value");        
        if (texto =="")
        {
            mensajeerror +="<br>Por favor digite el correo."
            $("#Correo").addClass("active");
        } else if (texto.length<3){            
            mensajeerror +="<br>El correo debe tener al menos 3 carácteres."                
            $("#Correo").addClass("active");
        } else if(texto.indexOf("@") ==-1){
            mensajeerror +="<br>El correo debe tener un formato valido."                
            $("#Correo").addClass("active");
        }
        
        texto=$("#Pass").attr("value");
        if (texto =="")
        {
            mensajeerror +="<br>Por favor digite la contraseña."
            $("#Pass").addClass("active");
            $("#RePass").addClass("active");
        }
        else {
            texto=$("#RePass").attr("value");
            if (texto =="")
            {
                mensajeerror +="<br>Por favor repita la contraseña."
                $("#RePass").addClass("active");                
            }
            else{
                texto1=$("#RePass").attr("value")
                texto2=$("#Pass").attr("value")
                if (texto1 != texto2){
                    mensajeerror +="<br>Las contraseñas no coinciden."                    
                }
            }
        }
        
        //obtener el valor de la opcion
        texto=$("#genero").val();        
        if (texto ==0)
        {
            mensajeerror +="<br>Por favor seleccione el género."
            $("#genero").addClass("active");
        }      
        
        if (!mensajeerror == "")
        {            
            $("#perror").append(mensajeerror);
            $("#capaError").css("display","block");  
            
        }
        else
        {
            /*alert("Hola "+$("#Nombre").attr("value")+
                "\nSe ha registrado satisfactoriamente en nuestro Portal"+
                "\nSu ingreso será con el correo"+$("#Correo").attr("value")+
                "\ny su contraseña es:"+$("#Pass").attr("value"));*/
            /*mensaje="Hola "+$("#Nombre").attr("value")+"!"+
            "<br>Se ha registrado satisfactoriamente en nuestro Portal"+
            "<br>Su ingreso será con el correo:"+$("#Correo").attr("value")+
            "<br>y su contraseña es:"+$("#Pass").attr("value");
            $("#ok").html(mensaje);
            $( "#dialog" ).dialog( "option", "width", 460 );
            $( "#dialog" ).dialog( "option", "title", "Registro Satisfactorio !");
            $( "#dialog" ).dialog( "open" );*/
            retorno=true
            //$("#frmRegistro").submit();
            
        }
        //alert(mensajeerror)
        return retorno;
    });
    
    //ingresar solo numeros en el telefono
    $("#Tel").keypress(function(e) { 
        //(var key = condicion? valorsitrue: valorsifalse)
        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
        //presiono borrar
        if (key==8){
            return true;
        }
        // si es presionado un numero
        if(key < 48 || key > 57)
        { 
            return false;
        }
    });
    
    //validar contraseña y repeticion contraseña
    $("#RePass,#Pass").blur(function(){        
        if ($("#RePass").attr("value")!="" && $("#Pass").attr("value")!="" && $("#RePass").attr("value")!= $("#Pass").attr("value")){            
            $("#perror").html("Las contraseñas NO coinciden.");
            $("#capaError").css("display","block");
            $("#btnRegistrar").attr('disabled', 'disabled');
        }
        else{
            $("#perror").html("");
            $("#capaError").css("display","none");            
            $("#btnRegistrar").attr('disabled', false);
        }
    });
    
     //recordar contraseña
    $("#recPass").click(function(){
        mensaje="Por el momento no tenemos como recuperar tu contraseña";
        $("#ok").html(mensaje);
        $( "#dialog" ).dialog( "option", "width", 460 );
        $( "#dialog" ).dialog( "option", "title", "No disponible !");
        $( "#dialog" ).dialog( "open" );   
    });
    
    //ingreso
    $("#btnIn").click(function(){        
        if ($("#correo").attr("value")!="" && $("#contrasena").attr("value")!="" ){            
            $("#login").submit();
        }else
        {
            $("#ok").html("Por favor ingrese El usuario y/o La Contraseña");
            $( "#dialog" ).dialog( "option", "width", 400 );
            $( "#dialog" ).dialog( "option", "title", "Login !");
            $( "#dialog" ).dialog( "open" ); 
            $("#correo").attr("value","");
            $("#contrasena").attr("value","");
        }                
    });
    
    //animacion
    options = {
        percent: 100
    };
    $( "#banner" ).show("explode", options, 2000, callback );        
    $( "#banner" ).show("slide", options, 500, callback );        
    $( "#banner" ).show("clip", options, 500, callback );    
    $( "#banner" ).show("shake", options, 500, callback );    
    $( "#banner" ).show("shake", options, 500, callback );    
});

//callback function to bring a hidden box back
function callback() {
    setTimeout(function() {
        $( "#banner:visible" ).removeAttr( "style" ).fadeIn();        
    }, 1500 );
};

$(function() {
    $( "#tabs" ).tabs();
});

$.fx.speeds._default = 1000;
$(function() {    
    $( "#dialog" ).dialog({
        autoOpen: false,
        show: "blind",
        hide: "explode"
    });    
});