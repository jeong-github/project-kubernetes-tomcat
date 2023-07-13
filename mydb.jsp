<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
	String DB_URL = System.getenv("db_url");
	String DB_USER = System.getenv("db_user");
	String DB_PASSWORD= System.getenv("db_password");
	Connection conn;
	Statement stmt;
	ResultSet rs;

	try
	{
		out.println("START TRY!!");
		out.println("<br/>");
		conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		out.println("getConnection success");
		out.println("<br/>");
		stmt = conn.createStatement();
		out.println("createStatement success");
		out.println("<br/>");
     	out.println("MySQL Connection Success!");
		out.println("<br/>");

		String sql = "select * from testTable";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			out.println("id - " +rs.getString("id")+ " |");
			out.println("NAME - " +rs.getString("name")+ " |");
			out.println("<hr>");
		}
		stmt.close();
		conn.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
 
</body>
</html>
