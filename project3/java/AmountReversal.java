import java.sql.*;
import com.mysql.cj.jdbc.*;
import com.mysql.cj.jdbc.CallableStatement;
public class AmountReversal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
	    	Class.forName(ConnectionConstants.driver);
		    Connection conn= DriverManager.getConnection(ConnectionConstants.url, ConnectionConstants.userName, ConnectionConstants.dbpassword);
	      // String query = "{call update_for_loser_bidders()}";
	       
	       CallableStatement cstmt = (CallableStatement) conn.prepareCall ("{call update_for_loser_bidders}");
	       cstmt.executeQuery();
	       System.out.println("File executed");
	       
	    }
	    catch (SQLException | ClassNotFoundException e) {
	      
	    }		

	}

}
