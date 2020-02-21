package upload.profile;

import java.io.IOException;
import java.io.InputStream;
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
 * Servlet implementation class UploadProfile
 */
@WebServlet("/UploadProfile")
@MultipartConfig(maxFileSize=169999999)
public class UploadProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	        	
	        	Part profileimage = request.getPart("profileimage");
	        	Part coverimage = request.getPart("coverimage");
	        	String sql =null;
	            InputStream inputStream= null;
	         
	           if(profileimage!=null) {
	        	   long fileSize = profileimage.getSize();
	        	   String fileContent = profileimage.getContentType();
	        	   inputStream = profileimage.getInputStream();
	        	   sql = "INSERT INTO userprofile (profileimage) values (?)";
	           }else if(coverimage!=null) {
	        	   long fileSize = coverimage.getSize();
	        	   String fileContent = coverimage.getContentType();
	        	   inputStream = coverimage.getInputStream();
	        	   sql = "INSERT INTO userprofile (coverimage) values (?)";
	           }
	           Class.forName("com.mysql.jdbc.Driver");
	           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","");

	           
	           PreparedStatement statement = conn.prepareStatement(sql);
	 
	            statement.setBlob(1,inputStream);
	 
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
