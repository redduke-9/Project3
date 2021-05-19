

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ComplaintFiling
 */
@WebServlet("/ComplaintFiling")
public class ComplaintFiling extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	String url = "jdbc:mysql://localhost:3306/own";  
    String driver = "com.mysql.cj.jdbc.Driver";  
    String userName = "root";  
    String password = "java@123";
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//String auction = request.getParameter("aid");		
		//int auctionid = Integer.parseInt(auction);
		//String buyer = request.getParameter("bid");
		//int sellerid =0;
		String Complaints=request.getParameter("Complaints");
		String id=request.getParameter("userid");
		/*HttpSession session=request.getSession();
		if(session!=null)  
	        session.setAttribute("name", userName);  
	        session.setAttribute("type", type);*/
	       String SQL="insert into complaints (userid,complaints) values (?,?) ";

	   try {
	    	Class.forName(driver);
		    Connection conn= DriverManager.getConnection(url, userName, password);
		    int uid=Integer.parseInt(id);
	       /*String query = "select sellerid from auction where auctionid = ?";*/
	       PreparedStatement ps =conn.prepareStatement(SQL);
	       ps.setInt(1, uid);
	       ps.setString(2, Complaints);
	      ps.executeUpdate();
	      
	      
	     out.println("received your complaint");
	     conn.close();
	   }catch(SQLException e) {
	   } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   RequestDispatcher rd=request.getRequestDispatcher("complaints.jsp");    
       rd.forward(request,response);  
	   
	   }
	       
	
		
	
}

