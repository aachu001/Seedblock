<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%
String id=request.getQueryString();
String s=null,s1=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null;
String x="send to backup";
 Blob b=null;
String id1=null,id2=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select imageid,imagename,imagess,count,uid from imageupload1 where imageid='"+id+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
  s1=rs.getString(2);
   
b=rs.getBlob(3);
  s3=rs.getString(4);
   
    s4=rs.getString(5);
 
}}

catch(Exception e1)
{
out.print(e1.getMessage());
}




try{

Connection con1 = databasecon.getconnection();

PreparedStatement ps1=con1.prepareStatement("insert into imageupload(imageid,imagename,imagess,count,uid) values(?,?,?,?,?)");
		//File f = new File(saveFile);
				ps1.setString(1,s);
                ps1.setString(2,s1);
                ps1.setBlob(3,b);
 ps1.setString(4,s3);
  ps1.setString(5,s4);
 
ps1.executeUpdate();
			
		
			//response.sendRedirect("badmin_recoverfile.jsp?success");
				
		} 
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
		String x2="send to user";
try
{
Connection con2=databasecon.getconnection();

PreparedStatement ps2=con2.prepareStatement("update recoverimage set status='"+x2+"' where fileid='"+id+"'");
ps2.executeUpdate();
response.sendRedirect("badmin_recoverimage.jsp?success");
}
catch(Exception e3)
{
out.print(e3.getMessage());
}
%>