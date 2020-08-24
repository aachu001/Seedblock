<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Seed Block Algorithm</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="menu.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">



function valid()
{
var aa=document.s.unn.value;
if(aa=="")
{
alert("Enter Name");
document.s.unn.focus();
return false;
}

var a=document.s.uidd.value;
if(a=="")
{
alert("Enter User ID");
document.s.uidd.focus();
return false;
}
var b=document.s.passs.value;
if(b=="")
{
alert("Enter Password");
document.s.passs.focus();
return false;
}


var k = document.s.mobb.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mobb.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mobb.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.s.mobb.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mobb.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eidd.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eidd.focus();
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
   
    <blockquote> <table>
      <tr> 
        <td width="300"></td>
        <td> <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User Registration</font></em></strong> 
        </td>
      </tr>
    </table>
	
	
	<table>
	<tr>
	<td width="300"></td>
	<td><form name="s" action="sign_up1.jsp" method="get" onSubmit="return valid()">
      <table  align="center" cellpadding="6" cellspacing="6" width="400" height="300">
        <td> 
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Name</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="unn" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>User ID</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input  type="text" name="uidd" id="name"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Password</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="passs" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Mobile</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mobb" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Email ID</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eidd" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Date</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="date" class="b" value="<%=strDateNew1%>"></td>
        </tr>
        <tr> 
          <td></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="submit" class="b1" > 
            &nbsp;&nbsp;&nbsp; <input type="reset" name="r" value="clear" class="b1"></td>
        </tr></td>
        <td></td>
      </table>
    </form></td>
	</tr></table></blockquote>
    
    <div id="gallery">
      <div class="clear:both;"></div>
    </div>
 
  </div>
  <div id="footer"> </div>
</div>
</body>
</html>
