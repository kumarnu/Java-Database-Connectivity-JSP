
 <%@page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
<title>Account & Passwords</title>   
  </head>
  
  <body background="s.jpg">
  <a href="login.jsp">
 <img src="home.jpg" align="left" style="width: 60px;height: 50px;border: 2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   
  <a href="https://www.facebook.com/sdhvbkjsdbv" target="top">
 <img src="fac.jpg" style="width: 90px;height: 29px;border: 2"></a>
 
 <a href="https://twitter.com/nitishdaksh94" target="top">
 <img src="twitter.jpg" style="width: 90px;height: 29px;border: 2"></a>
 
 <br><br><br>
    
    
    <%
    Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");

				Statement smt=con.createStatement();
			String sql= "select * from addpass";
				ResultSet rs=smt.executeQuery(sql);
    
     %>
     
    <center>
    <table border="10" background="red" width="900" height="300" align="center">
	<h1><b>PASSWORDS LOG</b></h1><br>
	<hr>
	<br><br><br><br>
	<tr>
		<th><b> ACCOUNT</b></th>
		<th><b>PASSWORD</b></th>
	</tr>
    
    
    <% while(rs.next())
		{	%>
		<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		</tr>
	<%}%>
    
    </table>
    </center>
    
    
    
  </body>
</html>
