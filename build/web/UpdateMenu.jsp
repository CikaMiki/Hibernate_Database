<%-- 
    Document   : UpdateMenu
    Created on : Sep 7, 2020, 4:24:50 PM
    Author     : Miki
--%>

<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.Query"%>
<%@page import="Default.Person"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Default.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS.css" type="text/css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a href="UpdateMenu.jsp"></a>
        <title>Update</title>
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
        
        
        <h2> Which employee's info are you updating? </h2> <br/>        

        <div class="container">
            <form name="Update" action="Update.jsp" method="post">
                
                    
                <b> Employee ID: </b><input type="text" name="idNumberUpdate" required/> <br/> <hr> <br/>
            
            New Email Address: <input type="text" name="emailUpdate" required/> <br/> 
            
            New Age: <input type="text" name="ageUpdate" required/> <br/> 
            
            New Salary: <input type="text" name="salaryUpdate" required/> <br/> <br/>
            
            <input type="submit" value="Update Employee Info"/> <br/>
            </form>    
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
                
                %> <h1> List of employees: </h1> <hr> <%
                
                for(Person person : persons) {
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
                }
                    
                
                %>
    </body>
</html>
