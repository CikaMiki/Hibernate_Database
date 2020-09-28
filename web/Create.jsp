<%--
    Document   : Test
    Created on : Apr 13, 2020, 3:46:54 PM
    Author     : Miki
--%>

<%@page import="Default.HibernateUtil"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Default.Person"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <link href="CSS.css" type="text/css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Creation</title>
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
                
        <%
        
        
        String name = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("emailAddress");
        String salary = request.getParameter("salary");
        String age = request.getParameter("age");
        
        int salaryInt = Integer.parseInt(salary);
        int ageInt = Integer.parseInt(age);
        
        Session create = HibernateUtil.createSessionFactory().openSession();
        Transaction tx = null; 
        
        Person person = new Person(name, lastName, email, salaryInt, ageInt);
        
        
    try {
        //ovde ide logika koju treba izvrsiti;
        tx = create.beginTransaction();
            
            Integer id = (Integer)create.save(person);
            
            create.persist(person);
            
            %> <h2> The following entry has been created: </h2> <%
            
            
                    %> <li> ID number: <%
                    out.println(person.getId());
                    %> <li> First name: <%
                    out.println(person.getName());
                    %> <li> Last name: <%
                    out.println(person.getLastName());
                    %> <li> Email address: <%
                    out.println(person.getAddress());
                    %> <li> Monthly salary: <%
                    out.println(person.getMonthlySalary());
                    %> <li> Age: <%
                    out.println(person.getAge());
                    %> <br> <hr> <%
                
            
            
            
        tx.commit();
    
    } catch (HibernateException e) {
        
    if (tx != null) {
        
    tx.rollback();
      }
    
    out.println(e);
    
    } 
            %>
    </body>
</html>
