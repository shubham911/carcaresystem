<%-- 
    Document   : status
    Created on : Mar 26, 2018, 4:01:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HomePage.jsp" %>
<html>

<form action="../">
    <div align="center" style="line-height: 30px;font-size: 22px;border: 1px transparent solid;width: 100%;height: 640px;color: burlywood">
        <h1 style="font-family: copperplate gothic;text-align: center">STATUS</h1><br><br>
   
<input type="RADIO" name="userChoice" id="navRadio01" onclick="window.open('Completed.jsp');">Completed Jobs&nbsp&nbsp;
<input type="RADIO" name="userChoice" id="navRadio02"  onclick="window.open('pending.jsp');">Pending Jobs
    </div>
</form>
</html>