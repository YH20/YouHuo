<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.youhuo.db.DBHelper"%>
<%@page import="com.youhuo.dao.impl.UserDaoImpl"%>
<%@page import="com.youhuo.dao.UserDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			Connection conn = DBHelper.getConnection();
			UserDao dao = new UserDaoImpl();
			System.out.println(dao.selectAll(conn));
			DBHelper.closeConnection(conn);
		%>
</body>
</html>