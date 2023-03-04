<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar</title>
</head>
<body>
    <%
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String sexo = request.getParameter("sexo");
        String correo = request.getParameter("correo");
        String ciudad = request.getParameter("ciudad");
        String description = request.getParameter("description");
        String stringNotification = request.getParameter("notificaciones");
        Boolean notificaciones;

        /****************
        /
        /  Validaciones
        /
        *****************/
        if (sexo == null)
            sexo = "otro";
        
        notificaciones = (stringNotification == null) ? false : true;            

        Connection conexion = null;
        Statement sentencia = null;
        int filas = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");

	        conexion = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/dbjohs", "root",
				"");
            sentencia = conexion.createStatement();

            String consultaSQL = "INSERT INTO usuario (nombre, apellidos, sexo, correo, poblacion, descripcion, notificaciones) VALUES ";
            consultaSQL += "('" + nombre + "', '" + apellidos + "', '" + sexo + "', '" + correo + "', '" + ciudad +"', '" + description + "', " + notificaciones +" )";

            filas = sentencia.executeUpdate(consultaSQL);

            //resopnse.sendRedirect("mostrar.jsp");
        } catch (ClassNotFoundException e) {
            out.println("Error en la carga del driver: " + e.getMessage());
        }
        catch (SQLException e) {
            out.println("Error accediendo a la base de datos: " + e.getMessage());
        }
        finally {
            if(sentencia != null) {
                try {
                    sentencia.close();
                }
                catch (SQLException e) {
                    out.println("Error al cerrar la sentencia: " + e.getMessage());
                }
            }
            if(conexion != null) {
                try {
                    conexion.close();
                }
                catch (SQLException e) {
                    out.println("Error al cerrar la conexion: " + e.getMessage());
                }
            }
        }
    %>
</body>
</html>