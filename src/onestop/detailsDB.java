package onestop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public class detailsDB {
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

	void insertDetails(String type,String name,String description,int rating,int cid)
	{
		
		try {
		 
		String query = " insert into details values (?, ?, ?, ?, ?)";
		java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, type);
	      preparedStmt.setString (2, name);
	      preparedStmt.setString (3, description);
	      preparedStmt.setInt(4, rating);
	      preparedStmt.setInt(5, cid);
	      preparedStmt.execute();	      
	      getDBConnection().close();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	
	void updateDescription(String type,String name,String description,int cid)
	{
		try
		{
		 String query = "update details set description = ? where type = ? and name = ? and cid= ? ";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, description);
	      preparedStmt.setString (2, type);
	      preparedStmt.setString (3, name);
	      preparedStmt.setInt (4, cid);
	      preparedStmt.executeUpdate();
	      getDBConnection().close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		 
	}
	public void updateRating(String type, String name) {
		try
		{
		 String query ="update details set rating = ( select (select sum(rating) from feedback where type=? and name=?) / (select count(*) from feedback where type=? and name=?) ) where type = ? and name = ?";
		  java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
		  preparedStmt.setString (1, type);
	      preparedStmt.setString (2, name);
	      preparedStmt.setString (3, type);
	      preparedStmt.setString (4, name);
	      preparedStmt.setString (5, type);
	      preparedStmt.setString (6, name);
	      preparedStmt.executeUpdate();
	      getDBConnection().close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}	
	}
	
	void deleteDetail(String type,String name,int cid)
	{
		try
		{
			String query = "delete from details where type = ? and name = ? and cid= ?";
		java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);     
	      preparedStmt.setString (1, type);
	      preparedStmt.setString (2, name);
	      preparedStmt.setInt (3, cid);
	      preparedStmt.executeUpdate();
	      getDBConnection().close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	ArrayList<details> getCollegeDetails(int cid,String type)
	{
		System.out.println("type+iiiiiiiiiiii"+cid);
		 ArrayList<details> detailList=new ArrayList<details>();
		try
		{
			
		 String query = "select * from details where cid = ? and type = ?  order by rating desc";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	     preparedStmt.setInt (1, cid);
	     preparedStmt.setString(2,type);
	     ResultSet rs= preparedStmt.executeQuery();
	     while (rs.next())
	      {
	    	 details ds=new details();
	    	 ds.setCid(rs.getInt("cid"));
	    	 ds.setType(rs.getString("type"));
	    	 ds.setName(rs.getString("name"));
	    	 ds.setDescription(rs.getString("description"));
	    	 ds.setRating(rs.getInt("rating"));
	    	 detailList.add(ds);
	      }	    
	      getDBConnection().close();	      
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return detailList;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		detailsDB dd= new detailsDB();
		ArrayList<details> detailList=new ArrayList<details>();
		detailList=dd.getCollegeDetails(1,"Bank");
		 for (int i=0; i<detailList.size(); i++)
	            System.out.print(detailList.get(i).getName()+" ");
		

	}

}
