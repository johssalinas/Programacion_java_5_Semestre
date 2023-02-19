<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>5 Punto</title>
</head>
<body>
    <h2>Resultados</h2>
    <%
        int nota1 = Integer.parseInt(request.getParameter("nota1"));
        int nota2 = Integer.parseInt(request.getParameter("nota2"));
        int nota3 = Integer.parseInt(request.getParameter("nota3"));
        float promedio;
        promedio = (nota1 + nota2 + nota3) / 3;
        out.println("<p>Promedio: " + promedio + "</p>");
    %>
    <a href="5_punto.html">Volver</a>
</body>
</html>