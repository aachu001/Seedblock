

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
      
      
      </ul>
    </div>
    <p>  </p>
   
  </div>
  <div id="content">
   
    <blockquote><table>
				<tr>
				<td width="200">
				</td>
				<td>
				<font color="#339900" size="+2">Backup Admin Login</font>
		<table>
		<tr>
		<td><form id="user1" method="get" action="b_admin1.jsp" name="s" onSubmit="return valid()">
			<table>
				<tr>
				<td>
				User Names</td>
				<td><input type="text" name="user1"></td>
				</tr>
				<tr>
				<td>
				Password</td>
				<td><input type="password" name="pass"></td>
				</tr>
				<tr>
				<td>
				</td>
				<td>
				<input type="submit" name="user" value="submit">
				</td></tr></table>
			</form></td>
			<td><img src="images/Backup_center_icon.png"></td></tr></table>
	
	
    
     
				</td></tr></table></blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
