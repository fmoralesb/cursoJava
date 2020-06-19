<%@ page import="es.caixa.Usuario" %>

<html>
    <head>
        <title>Mi pagina</title>
        <link rel="stylesheet" href="css/estilos.css"> 
    </head>
    <body>
        <h1>Soy más grande!</h1>
        <h2>Yo más pequeño!</h2>
    
        <jsp:scriptlet>
        // Codigo JAVA
        int numero1=7;
        int numero2=12;
        int suma=numero1+numero2;
        Usuario ivan=new Usuario("ivan@gmail.com");
        ivan.setNombre("Ivan");
        ivan.setApellidos("Osuna");
        ivan.setEdad(42);
        </jsp:scriptlet>
        <!--<p>Resultado de la suma:</p> </p> -->
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