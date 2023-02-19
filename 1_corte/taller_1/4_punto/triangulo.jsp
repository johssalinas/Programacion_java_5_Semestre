<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Triangulo - lógica</title>
</head>
<body>
    <%
        int base = Integer.parseInt(request.getParameter("base"));
        int altura = Integer.parseInt(request.getParameter("altura"));
        float area;
        area = (base*altura)/2;
        out.println("El area de la base del triangulo es " + base + " y la altura " + altura + " y su resutlado es: " + area);
    %>
    <br> <a href="index.html">volver</a>
</body>
</html>