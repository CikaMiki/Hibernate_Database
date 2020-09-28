<%-- 
    Document   : Delete
    Created on : Apr 18, 2020, 4:02:45 PM
    Author     : Miki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Default.HibernateUtil"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Default.Person"%>


<!DOCTYPE html>
<html>
    <head>
        <link href="CSS.css" type="text/css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Deletion</title>
    </head>
    <body>
        
        <div class="scrollmenu">
                
            <!-- MAIN MENU -->
            <a href="Main.jsp">Main Menu</a>
            
            <!-- CREATE NEW ENTRY -->
            <a href="CreateMenu.jsp">Add Entry</a>
            
            <!-- UPDATE ENTRY INFO -->
            <a href="UpdateMenu.jsp">Update Info</a>
            
            <!-- SEARCH BY SALARY LEVEL -->
            <a href="SearchMenu.jsp">Search by Salary</a>
            </div>        
        
        <%
        String id = request.getParameter("ID");
        int idINT = Integer.parseInt(id);

        Session delete = HibernateUtil.createSessionFactory().openSession();
        Transaction tx = null; 
        


        try {
        //ovde ide logika koju treba izvrsiti;
        tx = delete.beginTransaction();
            
            Person person = (Person) delete.load(Person.class, idINT);

            delete.delete(person);
        tx.commit();
    
        } catch (HibernateException e) {
        
        if (tx != null) {
        
        tx.rollback();
      }
    
        out.println(e);
    
        }
        %> <h2> Employee with ID <% out.println(idINT); %> has been deleted. </h2>
        
        
    </body>
</html>
