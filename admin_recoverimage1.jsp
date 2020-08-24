<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String id=request.getQueryString();
String x="send to backup";
try
{
Connection con=databasecon.getconnection();

PreparedStatement ps=con.prepareStatement("update recoverimage set status='"+x+"' where fileid='"+id+"'");
ps.executeUpdate();
response.sendRedirect("admin_recoverimage.jsp?success");
}
catch(Exception e)
{
out.print(e.getMessage());
}%>