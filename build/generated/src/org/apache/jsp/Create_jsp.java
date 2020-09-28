package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Default.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.Session;
import Default.Person;

public final class Create_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Employee Creation</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <a href=\"Main.jsp\">Return to menu page </a> <br/> <br/> \n");
      out.write("        \n");
      out.write("        ");

        
        
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
            
            
      out.write(" The following employee has been created: ");

            
            
                    
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

                
            
            
            
        tx.commit();
    
    } catch (HibernateException e) {
        
    if (tx != null) {
        
    tx.rollback();
      }
    
    out.println(e);
    
    } 
            
      out.write("\n");
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
