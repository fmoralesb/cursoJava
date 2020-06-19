<%@ page import="es.caixa.*" %>

<html>
    <head>
        <title>Mi pagina</title>
        <link rel="stylesheet" href="css/estilos.css"> 
    </head>
    <body>
        <h1>Soy más grande!</h1>
        <h2>Yo más pequeño!</h2>
    
        <jsp:scriptlet>
        GestorUsuarios miGestor=new GestorUsuarios();
        Usuario ivan=miGestor.newUsuario("Ivan","Osuna",42,System.currentTimeMillis()+"@gmail.com");
        ivan.setEdad(42);
        miGestor.datosUsuarioModificados(ivan);
        
        ivan=miGestor.getUsuario(ivan.getId());
        </jsp:scriptlet>
        
        <img src="imagenes/alien.png"/> 
        <p>Usuario:</p>
        
        <ul>
            <li>Nombre: <jsp:expression>ivan.getNombre()</jsp:expression> </li>
            <li>Apellido: <jsp:expression>ivan.getApellidos()</jsp:expression> </li>
            <li>Edad: <jsp:expression>ivan.getEdad()</jsp:expression> </li>
            <li>Email: <jsp:expression>ivan.getEmail()</jsp:expression> </li>
        </ul>
        
    </body>
</html> 