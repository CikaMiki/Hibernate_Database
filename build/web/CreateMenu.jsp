<%-- 
    Document   : CreateMenu
    Created on : Sep 7, 2020, 4:16:02 PM
    Author     : Miki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS.css" type="text/css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create</title>
    </head>
    <body>
        
        <div class="scrollmenu">
                
            <!-- MAIN MENU -->
            <a href="Main.jsp">Main Menu</a>
            
            <!-- DELETE ENTRY -->
            <a href="DeleteMenu.jsp">Delete Entry</a>
            
            <!-- UPDATE ENTRY INFO -->
            <a href="UpdateMenu.jsp">Update Info</a>
            
            <!-- SEARCH BY SALARY LEVEL -->
            <a href="SearchMenu.jsp">Search by Salary</a>
        </div>
        
        
        <h2>Enter new employee: </h2>
        <div class="container">
            <form name="newClient" action="Create.jsp" method="post">
                
            First Name: <input type="text" name="firstName" required/> <br/>
                                                                        
            Last Name: <input type="text" name="lastName" required/> <br/>
                                    
            Email Address: <input type="text" name="emailAddress" required/> <br/>
                                    
            Monthly Salary: <input type="text" name="salary" required/> <br/> 
            
            Age: <input type="text" name="age" required/> <br/> <br/>

            

            <input type="submit" value="Add New Employee"/> <br/>
            </form>
        </div>
    </body>
</html>
