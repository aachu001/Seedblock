<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String id=request.getQueryString();
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null;
String x="send to backup";

String id1=null,id2=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select uid,fname,fid,size,date,ff,owner,fileid,status from fileupload1 where fid='"+id+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
  s1=rs.getString(2);
   
 s2=rs.getString(3);
  s3=rs.getString(4);
   
    s4=rs.getString(5);
  s5=rs.getString(6);
     s6=rs.getString(7);
	   s7=rs.getString(8);
	   	   s8=rs.getString(9);
}}

catch(Exception e1)
{
out.print(e1.getMessage());
}




try{

Connection con1 = databasecon.getconnection();

PreparedStatement ps1=con1.prepareStatement("insert into fileupload(uid,fname,fid,size,date,ff,owner,fileid,status) values(?,?,?,?,?,?,?,?,?)");
		//File f = new File(saveFile);
				ps1.setString(1,s);
                ps1.setString(2,s1);
                ps1.setString(3,s2);
 ps1.setString(4,s3);
  ps1.setString(5,s4);
   ps1.setString(6,s5);
    ps1.setString(7,s6);
	 ps1.setString(8,s7);
ps1.setString(9,s8);
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

PreparedStatement ps2=con2.prepareStatement("update recoverfile set status='"+x2+"' where fileid='"+id+"'");
ps2.executeUpdate();
response.sendRedirect("badmin_recoverfile.jsp?success");
}
catch(Exception e3)
{
out.print(e3.getMessage());
}
%>