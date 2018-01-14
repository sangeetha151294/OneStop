package onestop;

import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PostFeed extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException { 
		String username = (String)request.getSession().getAttribute("name");
		String content = request.getParameter("feed");
		response.getWriter().println("<div class='panel panel-default' style='border-top: 4px solid #2196f3'><div class='panel-body'><div class='row'><div class='col-sm-6'>" + 
				"<p><a href='/profiles/Bhavesh Gehani\' class='username' data-user-id='367654'>"+username+
				"</a> <br><small>"+new Date()+"<br></small>" + 
				"</p></div></div><div class ='clearfix'></div>"
				+ "<h4 style='line-height: 1.4; word-wrap: break-word;'><p>" + content+
				"</h4></div></div>");
		disboardDB db=new disboardDB();
		String emailid=(String) request.getSession().getAttribute("email");
		int cid=(int)request.getSession().getAttribute("cid");
		String type="Default";
		
		db.insertDisboard(emailid, cid, type, content);
		
		
	}

}
