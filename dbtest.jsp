i<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
<title>mysql jdbc connect test</title>
</head>
<body>
 
<%
Connection conn = null;
String url = "jdbc:mysql://mysql:3306/testDB";
String id = "root";                     //MySQL에 접속을 위한 계정의 ID
String pwd = "password";            //MySQL에 접속을 위한 계정의 암호
Class.forName("com.mysql.cj.jdbc.Driver");
conn = DriverManager.getConnection(url, id, pwd);
out.println("<h1>MySQL DB 연결 성공</h1>");
%>
 
</body>
 
</html>
