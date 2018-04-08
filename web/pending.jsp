<%-- 
    Document   : status
    Created on : Mar 26, 2018, 4:01:06 PM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%><!DOCTYPE html>
<html>
   </head>
        
        
    <script>
       
    </script>
<body background="profilepics/blue.jpg" style="background-repeat: no-repeat;background-size:100%">
<%@include file="HomePage.jsp" %>
     <div align="center" style="line-height: 30px;font-size: 22px;border: 1px transparent solid;width: 100%;height: 640px;color: burlywood">
                
              <h1 style="font-family: copperplate gothic;text-align: center">Completed Jobs</h1>
                
                 <table border="1">
                  <tr>
                      <th>ID</th>
                      <th>NAME</th>
                      <th>ADDRESS</th>
                      <th>EMAIL</th>
                      <th>CONTACT</th>
                      <th>NUMBER OF SERVICES</th>
                      <th>SERVICE DATE</th>
                      <th>NUMBER PLATE</th>
                      <th>MODEL</th>
                      <th>STATUS</th>
                      
                  </tr>
                  <%
                      try{
                       
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servicerecord", "root", "");
                          Statement st = conn.createStatement();
                          ResultSet rs=st.executeQuery("select * from servicedetail where status='pending'");
                          while(rs.next()){
                              %>
                              <tr>
                                  <td><%=rs.getInt("id")%></td>
                                  <td><%=rs.getString("cust_name")%></td>
                                  <td><%=rs.getString("cust_address")%></td>
                                  <td><%=rs.getString("email")%></td>
                                  <td><%=rs.getString("contact")%></td>
                                  <td><%=rs.getInt("noservices")%></td>
                                  <td><%=rs.getString("servicedate")%></td>
                                  <td><%=rs.getString("noplate")%></td>
                                  <td><%=rs.getString("model")%></td>
                                  <td><%=rs.getString("status")%></td>
                              </tr>
                              
                              <%
                          }
                          
                      }catch (Exception e) {
                          System.out.print(e);
                          System.out.print("error");
                          //e.printStackTrace();
                      }

                  %>
                  
              </table>

                  </div>
                </body>
</html>
                
