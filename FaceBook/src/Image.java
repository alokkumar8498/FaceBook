
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Image
 */
@WebServlet("/Image")
@MultipartConfig(maxFileSize=169999999)
public class Image extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		Part filePath = request.getPart("image");
        InputStream inputStream= null;
        if(filePath!=null) {
     	   long fileSize = filePath.getSize();
     	   String fileContent = filePath.getContentType();
     	   inputStream = filePath.getInputStream();
        }
		
        try {
        	
        	
         
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","");

           String sql = "INSERT INTO userprofile (coverimage) values (?)";
           PreparedStatement statement = conn.prepareStatement(sql);
 
            statement.setBlob(1, inputStream);
 
            int row = statement.executeUpdate();
            if (row > 0) {
            	response.sendRedirect("Profile.jsp");
            }
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
		
	}

}
