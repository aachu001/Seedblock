<%@ page import="java.sql.*,databaseconnection.*"%>

<html>
<head>
<title>Seed Block Algorithm</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="menu.css" rel="stylesheet" type="text/css" />

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
       <li><a href="fileupload.jsp" class="top_parent">&nbsp; File Upload</a> </li>
	    <li><a href="imageupload.jsp" class="top_parent">&nbsp; Image Upload</a> </li>
		 <li><a href="viewfile.jsp" class="top_parent">&nbsp; View File</a> </li>
		  <li><a href="viewimage.jsp" class="top_parent">&nbsp; View Image</a> </li>
		  <li><a href="recover.jsp" class="top_parent">&nbsp; Recover File</a> </li>
            <li><a href="logout.jsp" class="top_parent">&nbsp; Logout</a> </li>
      </ul>
    </div>
    <p>  </p>
   
  </div>
  <div id="content">
   
    <blockquote><h2>Wlecome:<% String namew=(String)session.getAttribute("name");
		%> <%=namew%></h2>
          <%
		  String ccc=(String)session.getAttribute("userid");
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String x=request.getQueryString();

int id=0;
String id1=null,id2=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  id,fileid from fileupload where id='"+x+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
  s1=rs.getString(2);
 
       
		  
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
     
<table><tr><td><font color="#006600" size="+2">File</font></td>
<td><textarea rows="15" cols="50"><%=s1%></textarea></td></tr>
<tr>
<td></td><td><a href="filedownload.jsp?<%=s%>">Download</a></td></tr></table>
	</blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
