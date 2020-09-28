<%-- 
    Document   : Main
    Created on : Apr 18, 2020, 6:57:43 PM
    Author     : Miki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
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
        <title>Main Menu</title>
    </head>
    
    <body>

            <div class="scrollmenu">
            
            <!-- CREATE NEW ENTRY -->
            <a href="CreateMenu.jsp">Add Entry</a>
            
            <!-- DELETE ENTRY -->
            <a href="DeleteMenu.jsp">Delete Entry</a>
            
            <!-- UPDATE ENTRY INFO -->
            <a href="UpdateMenu.jsp">Update Info</a>
            
            <!-- SEARCH BY SALARY LEVEL -->
            <a href="SearchMenu.jsp">Search by Salary</a>
            </div>

            
            <%
                Session search = HibernateUtil.createSessionFactory().openSession();
                Transaction tx = null; 
                String hql = "from Person";
                
                List<Person> persons = null;
                
                try {
                //ovde ide logika koju treba izvrsiti;
                tx = search.beginTransaction();
                
                Query query = search.createQuery(hql);
                
                persons = query.list();
                
                tx.commit();
                
                } catch (HibernateException e) {
                    
                if (tx != null) {
                    
                tx.rollback();
                  }
                
                out.println(e);
                
                }
                %> <h1> Employee list: </h1> <hr> <%
                
                for(Person person : persons) {
                    %> <b> ID number: </b> <%
                    out.println(person.getId());
                    %>  <li> First name: <%
                    out.println(person.getName());
                    %>  <li> Last name: <%
                    out.println(person.getLastName());
                    %>  <li> Email address: <%
                    out.println(person.getAddress());
                    %>  <li> Monthly salary (USD): <%
                    out.println(person.getMonthlySalary());
                    %>  <li> Age: <%
                    out.println(person.getAge());
                    %> <br> <hr> <%
                }
                    
                
                %>
            
            
    </body>
</html>
