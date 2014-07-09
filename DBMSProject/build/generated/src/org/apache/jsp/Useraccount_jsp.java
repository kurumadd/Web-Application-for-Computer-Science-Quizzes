package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Useraccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\t<html>\n");
      out.write("\n");
      out.write("\t<head>\n");
      out.write("\t  \n");
      out.write("<title>BYC User Account</title>\n");
      out.write("\n");
      out.write("\t  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\"> \n");
      out.write("\t\n");
      out.write("  <link href=\"Style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\t</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<body>\n");
      out.write("\n");
      out.write("<div id=\"page-new\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- 4-H masthead -->\n");
      out.write("\n");
      out.write("\t\n");
      out.write("<table style=\"width: 100%; margin-bottom:8px;\">\n");
      out.write("\t  \n");
      out.write("  \n");
      out.write("\t  <tr>\n");
      out.write("\t\n");
      out.write("\t<td align=\"middle\" width=\"400\" valign=\"bottom\">\n");
      out.write("\n");
      out.write("\t    \t<h1>Build your Career !</h1> \n");
      out.write("\t\n");
      out.write("\t</td>\n");
      out.write("\n");
      out.write("\t  </tr>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr> <td style=\"color:white\"> Hello user ");
      out.print(session.getAttribute("username"));
      out.write("\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("  <tr>\n");
      out.write("\t  \t\n");
      out.write("<td>\n");
      out.write("\t  \t\n");
      out.write("\t<h2><a href=\"Logout.jsp\">Logout</a></h2>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("  \t</td>\n");
      out.write("\n");
      out.write("\t  </tr>\n");
      out.write("\t \n");
      out.write(" \n");
      out.write("\t</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div id=\"maincol\">\n");
      out.write("\n");
      out.write("\t\n");
      out.write("<table>\n");
      out.write("\t\n");
      out.write("<tr>\n");
      out.write("\t   \n");
      out.write(" <td>\n");
      out.write("\t\t\n");
      out.write("<div class=\"clip-circle box-shad circle1\">\n");
      out.write("\t\n");
      out.write("\t\t<a href=\"Test1.jsp\">\n");
      out.write("<center><img src=\"logo/main1.gif\" alt=\"test\" height=\"140px\" width=\"150px\"></center></a></div>\n");
      out.write("\n");
      out.write("\t\t<div class=\"clip-circle box-shad circle2\">\n");
      out.write("\t\t\t\n");
      out.write("<a href=\"Search.html\">\n");
      out.write("<center><img src=\"logo/main2.jpg\" alt=\"search-jobs\" height=\"220px\" width=\"160px\"></center></a></div>\n");
      out.write("\t\t<div class=\"clip-circle box-shad circle3\">\n");
      out.write("\t\t\t<a href=\"Score.html\"><center><img src=\"logo/main3.jpg\" alt=\"score\" height=\"160\" width=\"150\"></center></a></div>\n");
      out.write("\t\t<div class=\"clip-circle box-shad circle4\">\n");
      out.write("\t\t\t<a href=\"Leader.html\"><center><img src=\"logo/main4.jpg\" alt=\"leaderboard\" height=\"150px\" width=\"170px\"></center></a></div>\n");
      out.write("\t\t<div class=\"clip-circle box-shad circle5\">\n");
      out.write("\t\t\t<a href=\"expert1.jsp\"><center><img src=\"logo/main5.png\" alt=\"expert\" height=\"175px\" width=\"165px\"></center></a></div>\n");
      out.write("\t    </td>\n");
      out.write("\t</tr>\n");
      out.write("\t</table>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\t</body>\n");
      out.write("\t</html>");
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
