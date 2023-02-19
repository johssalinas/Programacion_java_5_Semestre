<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>2 Punto</title>
</head>
<body>
    <%
        int i;
        for(i=0; i<100;i++){
            out.println("<tr><td>" + i + " = </td><td>" + (i*i) + "<br>");
        }
    %>
    <a href="../index.html">Volver</a>
</body>
</html>