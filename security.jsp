<%
response.addHeader("pragma", "no-cache");
response.addHeader("Cache-Control", "no-Store");
response.setHeader("Cache-Control", "no-Store");
String value=(String)session.getAttribute("name");
if(value==null)
{
    response.sendRedirect("home.jsp");
}
if(session==null)
{
    response.sendRedirect("home.jsp");
}
%>