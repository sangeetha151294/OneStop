package onestop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public class feedbackDB {

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
	void insertFeedback(String emailid,String type,String name,int rating,String comment)
	{
		
		try {
		 
		String query = " insert into feedback values (?, ?, ?, ?, ?)";
		java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, emailid);
	      preparedStmt.setString (2, type);
	      preparedStmt.setString (3, name);
	      preparedStmt.setInt(4,rating);
	      preparedStmt.setString(5, comment);
	      preparedStmt.execute();	      
	      getDBConnection().close();
	      detailsDB dt=new detailsDB();
	      dt.updateRating(type,name);
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}
	
	
	ArrayList<feedback> getFeedback(int cid)
	{
		 ArrayList<feedback> feedbackList=new ArrayList<feedback>();
		try
		{
			
		 String query = "select * from  feedback where email_id in (select email_id from user where cid = ?)";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	     preparedStmt.setInt (1, cid);
	     ResultSet rs= preparedStmt.executeQuery();
	     while (rs.next())
	      {
	    	 feedback fb=new feedback();
	    	 fb.setRating(rs.getInt("rating"));
	    	 fb.setType(rs.getString("type"));
	    	 fb.setName(rs.getString("name"));
	    	 fb.setEmail_id(rs.getString("email_id"));
	    	 fb.setComment(rs.getString("comment"));
	    	 feedbackList.add(fb);
	      }	    
	      getDBConnection().close();	      
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return feedbackList;
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		feedbackDB dd=new feedbackDB();
		dd.insertFeedback("ss", "Bank", "Chase", 2, "blah");
		ArrayList<feedback> feedbackList=new ArrayList<feedback>();
		feedbackList=dd.getFeedback(1);
		 for (int i=0; i<feedbackList.size(); i++)
	            System.out.print(feedbackList.get(i).getComment()+" ");

	}
	

}
