<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String value=request.getParameter("val");

String Host="jdbc:sqlserver://localhost\\VAIBHAV:1433;databaseName=ForPrachuu";
String UserN="sa";
String UserP="vahbiav";
StringBuilder Res=new StringBuilder("");
try {
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection conn= DriverManager.getConnection(Host,UserN,UserP);
    Statement smt=conn.createStatement();
    ResultSet rs= smt.executeQuery("SELECT * FROM UserDetails where Lastname='"+value+"'");
    if(rs.next()){
    	out.print("Found Last Name");
    }
    else
    {
    	out.print("Not Found Last Name");
    }
}catch(Exception e){ 
    out.print(e);
}
%>
</body>
</html>