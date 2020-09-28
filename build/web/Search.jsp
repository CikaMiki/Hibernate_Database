<%-- 
    Document   : Search
    Created on : Apr 18, 2020, 3:50:49 PM
    Author     : Miki
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Comparator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
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
        <title>Employee Search</title>
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
            
            <!-- SEARCH BY SALARY LEVEL -->
            <a href="SearchMenu.jsp">Search by Salary</a>
            
        </div>
                
        <%
        String salary = request.getParameter("searchSalary");
        int salaryInt = Integer.parseInt(salary);
        
        Session search = HibernateUtil.createSessionFactory().openSession();
        Transaction tx = null; 
        
        
        String hql = "from Person where salary = ";
        
        List<Person> persons = null;
        
        
    try {
        //ovde ide logika koju treba izvrsiti;
        tx = search.beginTransaction();
            
        Query query = search.createQuery(hql + salaryInt);
                
        persons = query.list(); 
        
        tx.commit();
    
    } catch (HibernateException e) {
        out.println(e); 
    }
    
    if (tx != null) {
        
    //tx.rollback();
    
    }    
    %> <h2> Search results by salary: <br> </h2> <%

    for(Person person : persons) {
    
        %> <li> ID number: <%
        out.println(person.getId());
        %> <li> First name: <%
        out.println(person.getName());
        %> <li> Last name: <%
        out.println(person.getLastName());
        %> <li> Email address: <%
        out.println(person.getAddress());
        %> <li> Monthly salary (USD): <%
        out.println(person.getMonthlySalary());
        %> <li> Age: <%
        out.println(person.getAge());
        %> <br> <hr> <%
    
    }  %>
        
        
    </body>
</html>
