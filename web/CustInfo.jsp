<%-- 
    Document   : page
    Created on : Mar 26, 2018, 3:24:39 PM
    Author     : Admin
--%>


<!DOCTYPE html>
<html>
   </head>
        
        
    <script type="text/javascript">
       function myFunction() {
        alert("Data Inserted");
        }
    </script>
<body background="profilepics/blue.jpg" style="background-repeat: no-repeat;background-size:100%">
    
    
    <%@include file="HomePage.jsp" %>
   
    <form method="post" action="Custdb.jsp">
            <div style="line-height: 30px;font-size: 22px;border: 1px transparent solid;width: 100%;height: 640px;color: burlywood">
               
              <h1 style="font-family: copperplate gothic;text-align: center">ADD NEW RECORD</h1>
                <table align="center">
                <tr><th>Name:</th><td><input type="text" name="n1" ></td></tr>
                <tr><th>Address:</th><td><input type="text" name="n2"></td></tr>
                <tr><th>Email:</th><td><input type="email" name="n3"></td></tr>
                <tr><th>Contact:</th><td><input type="text" name="n4"></td></tr>
                <tr><th>Number of Services:</th><td><select name="service">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                </select></td></tr></td></tr>
                <tr><th>Service Date:</th><td><input type=date name="n6"></td></tr>
                <tr><th>Number Plate:</th><td><input type="text" name="n7"></td></tr>
                <tr><th>Model Number:</th><td><input type="text" name="n8"></td></tr>
                <tr><th>Status:</th><td><select name="status">
                <option value="pending">pending</option>
                <option value="complete">completed</option>
                </select></td></tr><br>
                <tr><th> </th><td><input type="Submit" value="submit" onclick="myFunction()">&nbsp&nbsp&nbsp<input type="reset"></td></tr>
                
                
                </table>
                    </center>
                </div>
                
            </form>
   </body>
</html>

