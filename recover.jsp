
<html>
<head>
<title>Seed Block Algorithm</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="menu.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">



function valid()
{

if(document.s.ccc.selectedIndex==0)
{
alert("Select recover item");
return false;
}



var na3=document.s.id.value;
if(na3=="")

{
alert("please enter id");
document.s.id.focus();
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
		%> <%=namew%></h2>	<form id="user1" method="get" action="recover1.jsp" name="s" onSubmit="return valid()">
	<table><tr>
	<td>
	<font color="red" size="+1">Recover File:*</font>
	</td>
	<td>
	<select id="ccc" name="ccc" style="width:100%">
												<option value="0">select</option>
												<option>File</option>
												<option>Image</option>
										</select>
	</td>
	</tr>
	<tr>
				<td>
				<font color="red" size="+1">File Id</font></td>
				<td><input type="text" name="id" size="30"></td>
				</tr>
				<tr>
				<td>
				</td>
				<td>
				<input type="submit" name="user" value="Send Request To Cloud Admin"></td></tr></table>
	</form>
	</blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
