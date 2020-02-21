package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		           
		String username=request.getParameter("username");  
		String pass=request.getParameter("pass");  
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","");  
		  
		PreparedStatement ps=con.prepareStatement("select username,password from signup where username=? and password=?");  
		 
		ps.setString(1,username);  
		ps.setString(2,pass);
		
		ResultSet rs = ps.executeQuery();
		
		while (rs.next()) {
			response.sendRedirect("Home.jsp");
			return;
		}
		response.sendRedirect("Login1.jsp");
		   
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();
	}

}
