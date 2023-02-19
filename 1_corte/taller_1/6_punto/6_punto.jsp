<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <title>6 Punto</title>
</head>
<body>
    <header>
        <h2>Resultado</h2>
    </header>
    <main>
        <%
        String nota1String = request.getParameter("nota1");
        String nota2String = request.getParameter("nota2");
        String nota3String = request.getParameter("nota3");
        if(nota1String != "" && nota2String != "" && nota3String != "") {
            int nota1 = Integer.parseInt(nota1String);
            int nota2 = Integer.parseInt(nota2String);
            int nota3 = Integer.parseInt(nota3String);
            float promedio;
            if(nota1 >= 0 && nota1 <= 20 && nota2 >= 0 && nota2 <= 20 && nota3 >= 0 && nota3 <= 20) {
                promedio = (nota1 + nota2 + nota3) / 3;
                out.println("<p>Promedio: " + promedio + "</p>");
            }
            else 
                out.println("<p>Nota incorrecta</p>");
        }else out.println("<p>Todos los campos son obligatorios</p>");
        %>
    </main> 
    <footer class="btn-volver">
        <a href="6_punto.html">Volver</a>
    </footer>
</body>
</html>