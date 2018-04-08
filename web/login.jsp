

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
       
    </script>
    <body background="profilepics/blue.jpg" style="background-repeat: no-repeat;background-size:100%">
        
        
       
        <form method="POST" action="logindir.jsp">
            <div style="line-height: 30px;font-size: 22px;border: 1px transparent solid;width: 100%;height: 640px;color: burlywood">
                <center style="margin-top: 220px">
              <h1 style="font-family: copperplate gothic;text-align: center">Employee Login</h1>
                <table>
                <tr><th>Username:</th><td><input type="text" name="uname" required></td></tr>
                <tr><th>Password:</th><td><input type="password" name="pass" required></td></tr>
                <tr><th> </th><td><input type="Submit" value="submit"><input type="reset"></td></tr>
                
                
                </table>
                    </center>
                </div>
            </form>
    </body>
</html>
