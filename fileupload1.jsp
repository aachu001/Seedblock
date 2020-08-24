
<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Seed Block Algorithm</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="menu.css" rel="stylesheet" type="text/css" />



<script type="text/javascript">

function valid()
{

var a=document.s.id.value;
if(a=="")
{
alert("Enter file id");
document.s.id.focus();
return false;
}

var b=document.s.key1.value;
if(b=="")
{
alert("Enter file name");
document.s.key1.focus();
return false;
}

var c=document.s.file.value;
if(c=="")
{
alert("choose file");
document.s.file.focus();
return false;
}


}

</script>
</head>
<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>
  <%
	String c=(String)session.getAttribute("name");
	String idd=request.getParameter("id");
	String keyy=request.getParameter("key1");
	session.setAttribute("fn1",idd);
session.setAttribute("f",keyy);
	%>
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
		<table>
   
      <td width="400"> <form name="s" action="fileupload2.jsp" ENCTYPE="multipart/form-data" method="post" onSubmit="return valid()">
          <table align="center"  width="350">
            <tr> 
              <td width="50"></td>
              <td> <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">Upload File</font></em></strong> </td>
            </tr>
            <tr> 
              <td><font face="Times New Roman"  size="+1"><strong>File Id</strong></font></td>
              <td><input type="text" class="a" name="id" value="<%=idd%>" /></td>
            </tr>
            <tr> 
              <td><font face="Times New Roman"  size="+1"><strong>File Name</strong></font></td>
              <td><input type="text" name="key1" value="<%=keyy%>"> </td>
            </tr>
           <tr> 
              <td><font face="Times New Roman"  size="+1"><strong>File</strong></font></td>
              <td><input type="file" name="file" class="b"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="s" value="Continue" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp; 
                <input type="reset" name="r" value="clear" class="b1"></td>
            </tr>
          </table>
        </form></td>
    <td><img src="images/fileup.jpg" width="150"></td>
      </tr>
    </table></td>
			

			</table></blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
