<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <title>10 Punto</title>
</head>
<body>
    <header>
        <h2>Resultado</h2>
    </header>
    <main>
        <%
            // Declaración de variables
            int sueldo = 0;
            String res = "",sueldoString;

            if (request.getParameter("OK") != null) {
                sueldoString = request.getParameter("sueldo");
                if(sueldoString != ""){
                    sueldo = Integer.parseInt(sueldoString);
                    out.println((sueldo >= 30 ? "Rico" : "Pobre"));
                }else out.println("<p>Introduzca un sueldo</p>");
            }
        %>
    </main>
    <footer class="btn-volver">
        <a href="10_punto.html">Volver</a>
    </footer>
</body>
</html>