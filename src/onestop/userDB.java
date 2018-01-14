package onestop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;


public class userDB {
	public static Connection getDBConnection()
	{
		Connection con=null;
		try
		{
		Class.forName("com.mysql.jdbc.Driver");  
		con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/sys","root","");  
		
		
		}
		catch(Exception e)
		{ 
			System.out.println(e);
			} 
		return con;
	}
	
	
	void insertUser(String name,String email_id,String role,int cid)
	{
		
		try {
		 
		String query = " insert into user values (?, ?, ?, ?)";
		java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, name);
	      preparedStmt.setString (2, email_id);
	      preparedStmt.setString (3, role);
	      preparedStmt.setInt(4, cid);
	      preparedStmt.execute();	      
	      getDBConnection().close();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	
	void updateRole(String email_id,String role)
	{
		try
		{
		 String query = "update user set role = ? where email_id = ?";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, role);
	      preparedStmt.setString (2, email_id);
	      preparedStmt.executeUpdate();
	      getDBConnection().close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		 
	}
	
	user getUser(String email_id)
	{
		 user us=new user();
		try
		{
			
		 String query = "select * from user where email_id = ?";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, email_id);
	     ResultSet rs= preparedStmt.executeQuery();
	     while (rs.next())
	      {
	    	 us.setCid(rs.getInt("cid"));
	    	 us.setEmail_id(rs.getString("email_id"));
	    	 us.setName(rs.getString("name"));
	    	 us.setRole(rs.getString("role"));
	      }	    
	      getDBConnection().close();	      
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return us;
	}

	ArrayList<user> getCollegeUser(int cid)
	{
		 ArrayList<user> userList=new ArrayList<user>();
		try
		{
			
		 String query = "select * from user where cid = ?";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	     preparedStmt.setInt (1, cid);
	     ResultSet rs= preparedStmt.executeQuery();
	     while (rs.next())
	      {
	    	 user us=new user();
	    	 us.setCid(rs.getInt("cid"));
	    	 us.setEmail_id(rs.getString("email_id"));
	    	 us.setName(rs.getString("name"));
	    	 us.setRole(rs.getString("role"));
	    	 userList.add(us);
	      }	    
	      getDBConnection().close();	      
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return userList;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		userDB ab= new userDB();
		
	}

}
