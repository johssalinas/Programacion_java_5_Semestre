<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <title>8 Punto</title>
</head>
<body>
    <header>
        <h2>Resultado</h2>
    </header>
    <main>
        <%
            //declaracion de variables
            int sueldo,horasExt,totalHorasExt,sueldoNeto;
            String nombre,sueldoString,horasExtString;
            //String nombre = "Nombre";
            horasExt = 0;
            //leer datos
            nombre = request.getParameter("nombre");
            sueldoString = request.getParameter("sueldo");
            horasExtString = request.getParameter("horasExt");
            //validar datos
            if(nombre != "" && sueldoString != "" && horasExtString != "") {
                sueldo = Integer.parseInt(sueldoString);
                horasExt = Integer.parseInt(horasExtString);
                totalHorasExt = horasExt*12;
                //calcular sueldo neto
                sueldoNeto = sueldo + totalHorasExt;
                //mostrar resultados
                out.println("<p>" + nombre + ", Su sueldo neto es " + sueldoNeto + "</p>");
            }else out.println("<p>Todos los campos son obligatorios</p>");
        %>
    </main>
    <footer class="btn-volver">
        <a href="8_punto.html">Volver</a>
    </footer>
</body>
</html>