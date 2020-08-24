<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
String id=request.getQueryString();
String host="", user="", pass="";
String emailid=(String)session.getAttribute("email");
host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="pakekeyserver@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="123@pake#"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =emailid; // out going email id

String from ="customerservice404@gmail.com"; //Email id of the recipient

String subject ="Recover file id";

String messageText ="File id is=<b>"+id+"</b>";


boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent

}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();




try
{
Connection con=databasecon.getconnection();

PreparedStatement ps=con.prepareStatement("delete from fileupload  where fid='"+id+"'");
ps.executeUpdate();
response.sendRedirect("deletefile1.jsp?success");
}
catch(Exception e)
{
out.print(e.getMessage());
}%>
