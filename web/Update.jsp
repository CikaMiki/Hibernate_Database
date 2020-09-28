<%-- 
    Document   : Update
    Created on : Apr 18, 2020, 6:08:19 PM
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
        <title>Employee Update</title>
    </head>
    <body>
        
        <div class="scrollmenu">
                
            <!-- MAIN MENU -->
            <a href="Main.jsp">Main Menu</a>
            
            <!-- CREATE NEW ENTRY -->
            <a href="CreateMenu.jsp">Add Entry</a>
            
            <!-- DELETE ENTRY -->
            <a href="DeleteMenu.jsp">Delete Entry</a>
            
            <!-- SEARCH BY SALARY LEVEL -->
            <a href="SearchMenu.jsp">Search by Salary</a>
            </div>
        
        <%
        
        
        String id = request.getParameter("idNumberUpdate");
        String email = request.getParameter("emailUpdate");
        String salary = request.getParameter("salaryUpdate");
        String age = request.getParameter("ageUpdate");
        
        int idUpdateInt = Integer.parseInt(id);
        int salaryInt = Integer.parseInt(salary);
        int ageInt = Integer.parseInt(age);


        
        Session update = HibernateUtil.createSessionFactory().openSession();
        Transaction tx = null; 
                
        
    try {
        //ovde ide logika koju treba izvrsiti;
        tx = update.beginTransaction();
            
            Person person = (Person) update.load(Person.class, idUpdateInt);

            person.setAddress(email);
            person.setMonthlySalary(salaryInt);
            person.setAge(ageInt);
            
                    %> <h2> Entry info successfully updated. </h2> <br> <%
                        
                
               
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
