<%-- 
    Document   : logout
    Created on : Apr 8, 2018, 1:57:27 PM
    Author     : shubham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("login.jsp");
%>