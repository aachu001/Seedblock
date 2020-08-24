<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String recover=request.getParameter("ccc");
String id=request.getParameter("id");
String userid=(String)session.getAttribute("id");

String sss="send to cloud";
String vm="File";
if(vm.equals(recover))
{
try
{
	Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into recoverfile(fileid,userid,status) values(?,?,?)");
ps.setString(1,id);
ps.setString(2,userid);
ps.setString(3,sss);

ps.executeUpdate();




}
catch(Exception e1)
{
out.println(e1.getMessage());
}

}
else 
{
try
{
	Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("insert into recoverimage(fileid,userid,status) values(?,?,?)");
ps1.setString(1,id);
ps1.setString(2,userid);

ps1.setString(3,sss);
ps1.executeUpdate();




}
catch(Exception e11)
{
out.println(e11.getMessage());
}


}
response.sendRedirect("user2.jsp");
%>