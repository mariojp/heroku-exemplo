<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html>
<body>
<h2>NOVO!</h2>

<%
String url = System.getenv("DATABASE_URL");

Connection c = DriverManager.getConnection(url);
%>

<%=c.getMetaData().getDatabaseProductName() %><br>
<%=c.getMetaData().getDatabaseProductVersion() %>

</body>
</html>
