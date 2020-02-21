package signup;

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
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String name=request.getParameter("name");  
		String email=request.getParameter("email");  
		String username=request.getParameter("username");  
		String password=request.getParameter("pass");  
		          
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","");  
		  
		PreparedStatement ps=con.prepareStatement("select username from signup where username=? ");   
		ps.setString(1,username);  
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			response.sendRedirect("Regastation1.jsp");
			return;
		}
		
		
		PreparedStatement ps1=con.prepareStatement("insert into signup values(?,?,?,?)");  
		  
		ps1.setString(1,name);  
		ps1.setString(2,email);  
		ps1.setString(3,username);  
		ps1.setString(4,password);  
		          
		int i=ps1.executeUpdate();  
		if(i>0)    
		response.sendRedirect("Login.jsp");      
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		}
}

