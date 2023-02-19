<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <title>4 Punto</title>
</head>
<body>
    <header>
        <h2>Resultado</h2>
    </header>
    <main>
        <%
        String baseString = request.getParameter("base");
        String alturaString = request.getParameter("altura");
        if(baseString != "" && alturaString != "") {
            int base = Integer.parseInt(baseString);
            int altura = Integer.parseInt(alturaString);
            float area;
            area = (base*altura)/2;
            out.println("El area de la base del triangulo es " + base + " y la altura " + altura + " y su resutlado es: " + area);
        }else out.println("<p>Todos los campos son obligatorios</p>");
        %>
    </main> 
    <footer class="btn-volver">
        <a href="4_punto.html">Volver</a>
    </footer>
</body>
</html>