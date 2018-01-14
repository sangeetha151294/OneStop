package onestop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public class collegeDB {

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
	
	
	void insertUser(String college,int cid)
	{
		
		try {
		 
		String query = " insert into college values (?, ?)";
		java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, college);
	      preparedStmt.setInt(2, cid);
	      preparedStmt.execute();	      
	      getDBConnection().close();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	
	
	ArrayList<college> getCollege()
	{
		 ArrayList<college> collegeList=new ArrayList<college>();
		try
		{
			
		 String query = "select * from  college order by college asc";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	    
	     ResultSet rs= preparedStmt.executeQuery();
	     while (rs.next())
	      {
	    	 college cg=new college();
	    	 cg.setCollege(rs.getString("college"));
	    	 cg.setCid(rs.getInt("cid"));
	    	 
	    	 collegeList.add(cg);
	      }	    
	      getDBConnection().close();	      
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return collegeList;
	}

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		collegeDB ab=new collegeDB();
		//ab.insertUser("UofA", 2);
		ArrayList<college> collegeList=new ArrayList<college>();
		collegeList= ab.getCollege();
		 for (int i=0; i<collegeList.size(); i++)
	            System.out.print(collegeList.get(i).getCollege()+" ");

	}

}
