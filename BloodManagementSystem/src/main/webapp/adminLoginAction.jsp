<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if ("admin".equals(username) && "admin".equals(password)) {
        response.sendRedirect("home.jsp?msg=valid");

    } else {
        response.sendRedirect("adminLogin.jsp?msg=invalid");

    }
%>
