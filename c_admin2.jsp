

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
   <img src="images/123.jpg" width="491" height="250"></blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
