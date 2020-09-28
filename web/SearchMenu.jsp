<%-- 
    Document   : SearchMenu
    Created on : Sep 8, 2020, 2:59:23 PM
    Author     : Miki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS.css" type="text/css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="scrollmenu">
            
            <!-- MAIN MENU -->
            <a href="Main.jsp">Main Menu</a>
            
            <!-- CREATE NEW ENTRY -->
            <a href="CreateMenu.jsp">Add Entry</a>
            
            <!-- DELETE ENTRY -->
            <a href="DeleteMenu.jsp">Delete Entry</a>
            
            <!-- UPDATE ENTRY INFO -->
            <a href="UpdateMenu.jsp">Update Info</a>
            
        </div>
        
        
        <h2>Search for employee by salary amount: </h2>
            <div class="container">
                <form name="searchEmployee" action="Search.jsp" method="post">
            
                    Salary: <input type="text" name="searchSalary" required/> <br/> <br/>
            
                    <input type="submit" value="Search"/> <br/>
                </form>
            </div>
    </body>
</html>
