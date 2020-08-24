<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*,databaseconnection.*"%>




<html>
<head>
</head>
<body>
<%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;
		String file=null;
		String a=null,b=null,c=null,d=null,ee=null,fg=null,image=null;
	String bin = "";
		FileInputStream fs=null;
 
		File file1 = null;
			
		FileInputStream fs1=null;
 
		File file2 = null;
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("id"))
				{
					a=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("key1"))
				{
					b=multi.getParameter(paramname);
				}
				
				
				if(paramname.equalsIgnoreCase("userImage"))
				{
					image=multi.getParameter(paramname);
				}
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Gallery\\"+image);
			file1 = new File(fPath);
			file2 = new File(fPath);
			fs = new FileInputStream(file1);
			fs1 = new FileInputStream(file2);
			list.add(fs);
		list.add(fs1);
			
			
		}		
	}
	
	    
            //name=dirName+"\\Gallery\\"+image;
			int lyke=0;
			//String as="0";
			String uid=(String)session.getAttribute("id");
 Connection con = databasecon.getconnection();
 PreparedStatement ps=con.prepareStatement("insert into imageupload(imageid,imagename,imagess,count,uid) values(?,?,?,?,?)");
 
				ps.setString(1,a);
               	ps.setString(2,b);
				
			 ps.setBinaryStream(3, (InputStream)fs, (int)(file1.length()));
			ps.setInt(4,lyke);
			ps.setString(5,uid);			
		PreparedStatement ps1=con.prepareStatement("insert into imageupload1(imageid,imagename,imagess,count,uid) values(?,?,?,?,?)");
 
				ps1.setString(1,a);
               	ps1.setString(2,b);
				
			 ps1.setBinaryStream(3, (InputStream)fs1, (int)(file2.length()));
			ps1.setInt(4,lyke);
			ps1.setString(5,uid);
			ps.executeUpdate();
			ps1.executeUpdate();
		
		
			
			
			response.sendRedirect("user2.jsp?success");	
		} 
		
		
		
		
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
	
	
	
	
 %>
</body>
</html>

