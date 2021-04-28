<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html>
<body>
<h2>NOVO!</h2>

<%

Class.forName("org.postgresql.Driver");

String url = System.getenv("DATABASE_URL");

String user = System.getenv("BD_USER");
String pass = System.getenv("BD_PASS");
String conexao = System.getenv("BD_URL");




Connection c = DriverManager.getConnection(conexao,user,pass);
%>

<%=c.getMetaData().getDatabaseProductName() %><br>
<%=c.getMetaData().getDatabaseProductVersion() %>

</body>
</html>
