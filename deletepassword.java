
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class deletepassword extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String uname=	request.getParameter("t1");
			
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");

				String sql="delete from addpass where site=(?)";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1,uname);
				
				
				
				
				
				
				
				ps.executeUpdate();

		}
		catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		RequestDispatcher rd=request.getRequestDispatcher("afterlogin.jsp");
		
		rd.forward(request, response);
	}		
}

