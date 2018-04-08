<%-- 
    Document   : status
    Created on : Mar 26, 2018, 4:01:06 PM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    
</head>
        
<%@include file="HomePage.jsp" %>
<div class="container">     
     <form action="service.jsp" method="POST">  
            <div align="center" style="line-height: 25px;font-size: 20px;border: 1px transparent solid;width: 100%;color: burlywood">
                
              <h1 style="font-family: copperplate gothic;text-align: center">SERVICE</h1>
                         
              <select name="isSelected" onchange="this.form.submit()">
                  <option value="0">Number plate</option>
              
                  <%
                       
                      try {
                          String Query="select distinct id,noplate from servicedetail";
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servicerecord", "root", "");
                          Statement st = conn.createStatement();
                          ResultSet rs=st.executeQuery(Query);
                          while(rs.next())
                          {
                              %>
                              <option value="<%=rs.getInt("id")%>"><%=rs.getString("noplate")%></option>                               
                              <%
                                 
                          }
                          conn.close();
                          rs.close();

                      } catch (Exception e) {
                          System.out.print(e);
                          System.out.print("error");
                          //e.printStackTrace();
                      }
                    
                  %>  
              </select> 
              <br><br><br><br>    
                  </div>
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
                          ResultSet rs=st.executeQuery("select * from servicedetail where id="+request.getParameter("isSelected"));
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
                          conn.close();
                          rs.close();
                          
                      }catch (Exception e) {
                          System.out.print(e);
                          System.out.print("error");
                          //e.printStackTrace();
                      }

                  %>
                  
              </table>
                  </form>
        </div>>
        </body>
</html>
                
