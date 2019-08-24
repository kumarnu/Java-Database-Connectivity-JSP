
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Statement;




public class LoginServlet extends HttpServlet
{
protected void service(HttpServletRequest request ,HttpServletResponse response)throws IOException,ServletException
	
	{
	
	try{
		String uname= request.getParameter("t1");
		String pass= request.getParameter("t2");
		
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");

			Statement smt=con.createStatement();
		String sql= "select * from log";
			ResultSet rs=smt.executeQuery(sql);
			int i=1;int j=1;
		while(rs.next())
		{
			
			if(uname.equals(rs.getString(1))&&pass.equals(rs.getString(2)))
			{
				++i;
			}
			else
			{
				j++;
			}
		}
		
		if(i>1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("afterlogin.jsp");
			
			rd.forward(request, response);
		}
		else{
			request.setAttribute("msg", "You have entered wrong username and password");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request,response);
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*String uname= request.getParameter("t1");
	String pass= request.getParameter("t2");
		//System.out.println(uname);
		//System.out.println(pass);
		
		
		if(uname.equals("nitish")&& pass.equals("nitish"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("afterlogin.jsp");
			rd.forward(request,response);
		}
		else
		{
	        request.setAttribute("msg", "You have entered wrong username and password");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request,response);
		}
*/		
		
		
		
		
		
		
		
		
		
		
		
		/*String old_pass=request.getParameter("t3");
		//String n_pass=request.getParameter("t4");
		//String conf_pass=request.getParameter("t5");
		
		
		if(old_pass.equals("nitish"))
		{
			String n_pass=request.getParameter("t4");
			String conf_pass=request.getParameter("t5");
		}
		else
		{
			request.setAttribute("msg1", "The current password is wrong");
			RequestDispatcher rd=request.getRequestDispatcher("page2.jsp");
			rd.forward(request,response);
		}*/
	
	
	
	}
       
	
	

}
