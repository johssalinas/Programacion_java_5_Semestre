<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/style.css">
    <title>Mostrar</title>
</head>
<body>
<% 
Connection conexion=null;
Statement  sentencia=null;
ResultSet rs=null;
try  {
	
	
		Class.forName("com.mysql.jdbc.Driver");

	conexion = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/dbjohs", "root",
				"");
	 sentencia= conexion.createStatement();

	 String consultaSQL=  "select nombre, apellidos, sexo, correo, poblacion, descripcion, notificaciones from usuario ";

	 rs=sentencia.executeQuery(consultaSQL);
	 
	 while(rs.next()) { %>
	 
        <%=rs.getString("nombre")%>
        <%=rs.getString("apellidos")%>
		<%=rs.getString("sexo")%>
        <%=rs.getString("correo")%>
        <%=rs.getString("poblacion")%>
        <%=rs.getString("descripcion")%>
        <%=rs.getString("notificaciones")%>
			<br/>
	 
	 
	<% }

}catch (ClassNotFoundException e) {
	
	out.println("Error en la carga del driver" 
						+ e.getMessage());
	
}catch (SQLException e) {
	
	out.println("Error accediendo a la base de datos" 
						+ e.getMessage());
	
}
 finally {
	

	if (rs != null) {

		try {rs.close();} catch (SQLException e)
		{out.println("Error cerrando el resultset" + e.getMessage());}
		
	}
	
	if (sentencia != null) {

		try {sentencia.close();} catch (SQLException e) 
		{out.println("Error cerrando la sentencia" + e.getMessage());}
		
	}
	if (conexion != null) {

		try {conexion.close();} catch (SQLException e) 
		{out.println("Error cerrando la conexion" + e.getMessage());}
	}
 }
%>
    <footer class="btn-volver">
        <a href="taller_2.html">Volver</a>
    </footer>
</body>
</html>