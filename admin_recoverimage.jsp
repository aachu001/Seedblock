
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Seed Block Algorithm</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="menu.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">


function valid()
{


var na1=document.s.user1.value;
if(na1=="")
{
alert("please enter user id");
document.s.user1.focus();
return false;
}



var na2=document.s.pass.value;
if(na2=="")

{
alert("please enter your password");
document.s.pass.focus();
return false;
}


}

</script>
</head>
<body>
<div id="container">
  <div id="top">
  
    <h1>Seed Block Algorithm: A Remote Smart Data Back-up Technique for Cloud
Computing</h1>
  </div>
  <div id="menuh-container"> 
    <div id="menuh"> 
      <ul>
        <li><a href="index.html" class="top_parent">&nbsp; Homepage</a> </li>
      </ul>
      <ul>
        <li><a href="user.jsp" class="top_parent">&nbsp; User</a> </li>
      </ul>
      <ul>
        <li><a href="c_admin.jsp" class="top_parent">&nbsp; Cloud Admin</a> </li>
      </ul>
      <ul>
        <li><a href="b_admin.jsp" class="top_parent">&nbsp; Backup Admin</a> </li>
      </ul>
    </div>
  </div>
  <div class="clear:both;"></div>
  <div id="leftnav">
    <h2></h2>
    <div id="nav">
      <ul id="navlist">
          <li><a href="admin_recoverfile.jsp" class="top_parent">File Recover Request</a> </li>
       <li><a href="admin_recoverimage.jsp" class="top_parent">Image Recover Request</a> </li>
	        <li><a href="logout.jsp" class="top_parent">Logout</a> </li>
      </ul>
    </div>
    <p>  </p>
   
  </div>
  <div id="content">
   
   <blockquote><h3>Wlecome:<% 
		%>Cloud Admin</h3><br>
   <table height="300"><td>
      <table border="1">
          <tr> 
           <td bgcolor="#990000"><font color="#FFFFFF" size="+1">File Name</font></td>
            <td bgcolor="#990000"><font color="#FFFFFF" size="+1">File Id</font></td>
			 <td bgcolor="#990000"><font color="#FFFFFF" size="+1">User Name</font></td>
            <td bgcolor="#990000"><font color="#FFFFFF" size="+1">Click</font></td>
        
          

			
			
          </tr>
          <%

String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String x="send to cloud";
int id=0;
String id1=null,id2=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select fileid,userid from recoverimage where status='"+x+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
  s1=rs.getString(2);
   
   
   try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("select name from user where id='"+s1+"'");
ResultSet rs1=ps1.executeQuery();
	
while(rs1.next())
 {
 s2=rs1.getString(1);
 
   }
   }
   catch(Exception e3)
   {
   out.println(e3.getMessage());
   }
   
   try
{
Connection con11 = databasecon.getconnection();
PreparedStatement ps11=con11.prepareStatement("select imagename from imageupload1 where imageid='"+s+"'");
ResultSet rs11=ps11.executeQuery();
	
while(rs11.next())
 {
 s3=rs11.getString(1);
 
   }
   }
   catch(Exception e31)
   {
   out.println(e31.getMessage());
   }
   
   
 %>
          <tr> 
		  <td bgcolor="#FFFFCC"> 
             <font color="#0000000"><%=s3%></font>
            </td>
            	  <td bgcolor="#FFFFCC"> 
              <font color="#0000000"><%=s%></font>
            </td>
      	
            	  <td bgcolor="#FFFFCC"> 
              <font color="#0000000"><%=s2%></font>
            </td>
         	 
	
             <td bgcolor="#FFFFCC">  <a href="admin_recoverimage1.jsp?<%=s%>"><font color="#0000000">Send to Backup Admin</font></a></td>
				
          </tr>
          <%
		  
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
        </table></td>
    </table>  
				
	
				</td>
				<td></td></tr>
				</table>
   </blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
