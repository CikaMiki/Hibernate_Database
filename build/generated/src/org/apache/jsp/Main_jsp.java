package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import org.hibernate.Query;
import Default.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.Session;
import Default.Person;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"Style.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Main Menu</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <hr>\n");
      out.write("        <h1>Enter new employee: </h1>\n");
      out.write("            \n");
      out.write("            <form name=\"newClient\" action=\"Create.jsp\" method=\"post\">\n");
      out.write("                \n");
      out.write("            First Name: <input type=\"text\" name=\"firstName\" required/> <br/>\n");
      out.write("                                                                        \n");
      out.write("            Last Name: <input type=\"text\" name=\"lastName\" required/> <br/>\n");
      out.write("                                    \n");
      out.write("            Email Address: <input type=\"text\" name=\"emailAddress\" required/> <br/>\n");
      out.write("                                    \n");
      out.write("            Monthly Salary: <input type=\"text\" name=\"salary\" required/> <br/> \n");
      out.write("            \n");
      out.write("            Age: <input type=\"text\" name=\"age\" required/> <br/> <br/>\n");
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <input type=\"submit\" value=\"Add New Employee\"/> <br/> <hr> <hr>\n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1> Delete employee data: </h1>\n");
      out.write("            \n");
      out.write("            <form name=\"deleteClient\" action=\"Delete.jsp\" method=\"post\">\n");
      out.write("                                    \n");
      out.write("            Employee ID: <input type=\"text\" name=\"ID\" required/> <br/> <br/>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Delete Employee Data\"/> <br/>\n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("        <hr> <hr>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1>Update employee info: </h1>\n");
      out.write("            \n");
      out.write("            <form name=\"Update\" action=\"Update.jsp\" method=\"post\">\n");
      out.write("            Which employee's info are you updating? <br/>                 \n");
      out.write("            Employee ID: <input type=\"text\" name=\"idNumberUpdate\" required/> <br/> <hr>\n");
      out.write("            \n");
      out.write("            New Email Address: <input type=\"text\" name=\"emailUpdate\" required/> <br/> \n");
      out.write("            \n");
      out.write("            New Age: <input type=\"text\" name=\"ageUpdate\" required/> <br/> \n");
      out.write("            \n");
      out.write("            New Salary: <input type=\"text\" name=\"salaryUpdate\" required/> <br/> <br/>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Update Employee Info\"/> <br/> <hr> <hr>\n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1>Search for employee by salary level: </h1>\n");
      out.write("            \n");
      out.write("            <form name=\"searchEmployee\" action=\"Search.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("            Salary level: <input type=\"text\" name=\"searchSalary\" required/> <br/> <br/>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Search\"/> <br/> <hr> <hr>\n");
      out.write("            </form><br/>\n");
      out.write("            \n");
      out.write("            ");

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
                
      out.write(" <h1> List of employees: </h1> <hr> ");

                
                for(Person person : persons) {
                    
      out.write(" <li> ID number: ");

                    out.println(person.getId());
                    
      out.write(" <li> First name: ");

                    out.println(person.getName());
                    
      out.write(" <li> Last name: ");

                    out.println(person.getLastName());
                    
      out.write(" <li> Email address: ");

                    out.println(person.getAddress());
                    
      out.write(" <li> Monthly salary: ");

                    out.println(person.getMonthlySalary());
                    
      out.write(" <li> Age: ");

                    out.println(person.getAge());
                    
      out.write(" <br> <hr> ");

                }
                    
                
                
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
