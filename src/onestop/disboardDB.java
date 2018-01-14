package onestop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public class disboardDB {
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
	void insertDisboard(String emailid,int cid,String type,String content)
	{
		
		try {
		 
		String query = " insert into disboard(email_id, cid, type,\n" + 
				"content) values (?, ?, ?, ?)";
		java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	      preparedStmt.setString (1, emailid);
	      preparedStmt.setInt (2, cid);
	      preparedStmt.setString (3, type);
	      preparedStmt.setString(4, content);
	      preparedStmt.execute();	      
	      getDBConnection().close();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	ArrayList<disboard> getCollegeDisBoard(int cid)
	{
		 ArrayList<disboard> disBoardList=new ArrayList<disboard>();
		try
		{
			
		 String query = "select * from  disboard where cid = ? order by time desc";
		 java.sql.PreparedStatement preparedStmt =  getDBConnection().prepareStatement(query);
	     preparedStmt.setInt (1, cid);
	     ResultSet rs= preparedStmt.executeQuery();
	     while (rs.next())
	      {
	    	 disboard db=new disboard();
	    	 db.setCid(rs.getInt("cid"));
	    	 db.setType(rs.getString("type"));
	    	 db.setContent(rs.getString("content"));
	    	 db.setEmail_id(rs.getString("email_id"));
	    	 db.setTime(rs.getTimestamp("time"));
	    	 disBoardList.add(db);
	      }	    
	      getDBConnection().close();	      
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return disBoardList;
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		disboardDB dd=new disboardDB();
		ArrayList<disboard> detailList=new ArrayList<disboard>();
		detailList=dd.getCollegeDisBoard(1);
		 for (int i=0; i<detailList.size(); i++)
	            System.out.print(detailList.get(i).getContent()+" ");

	}

}
