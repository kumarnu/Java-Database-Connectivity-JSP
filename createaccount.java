import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class createaccount extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String uname=	request.getParameter("t1");
			String pass=	request.getParameter("t2");
			String firstname= request.getParameter("t3");
			String lastname=	request.getParameter("t4");
			String mothername=	request.getParameter("t5");
			String fathername=request.getParameter("t6");
			String state=request.getParameter("t7");
			
				
			    Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
                String sql="insert into log values(?,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1,uname);
				ps.setString(2,pass);
				ps.setString(3,firstname);
				ps.setString(4,lastname);
				ps.setString(5,mothername);
				ps.setString(6,fathername);
				ps.setString(7,state);
				ps.executeUpdate();
				

		}
		catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		
		rd.forward(request, response);
	}		
}
