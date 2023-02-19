<%@ page import="java.lang.Math" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <title>9 Punto</title>
</head>
<body>
    <header>
        <h2>El volumen de la piramide es</h2>
    </header>
    <main>
        <%
            // Declaración de variables
            int altura,lado;
            double volumen,miRaiz;
            String alturaString,ladoString;
            // Entrada de datos
            alturaString = request.getParameter("altura");
            ladoString = request.getParameter("lado");
            if(alturaString != "" && ladoString != ""){
                altura = Integer.parseInt(alturaString);
                lado = Integer.parseInt(ladoString);
                //Calculos
                miRaiz = java.lang.Math.sqrt(3);
                volumen = ((lado*lado)*(miRaiz)*(altura)/4)/3;
                // Salida de datos
                out.println("<p>" + volumen + "</p>");
            }else out.println("<p>Todos los campos son obligatorios</p>");
        %>
    </main>
    <footer class="btn-volver">
        <a href="9_punto.html">Volver</a>
    </footer>
</body>
</html>