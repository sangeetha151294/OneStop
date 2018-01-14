package onestop;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getFeed
 */
@WebServlet("/getFeed")
public class getFeed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getFeed() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = (String)request.getSession().getAttribute("name");
		int cid=(int)request.getSession().getAttribute("cid");
		String emailid=(String) request.getSession().getAttribute("email");
		disboardDB ddb=new disboardDB();
		 ArrayList<disboard> disBoardList=new ArrayList<disboard>();
		 disBoardList=ddb.getCollegeDisBoard(cid);
		 
		 
		 String res="";
		 
		 for(int i=0;i<disBoardList.size();i++)
		 {
			 String query="<div class='panel panel-default' style='border-top: 4px solid #2196f3'><div class='panel-body'><div class='row'><div class='col-sm-6'>" + 
						"<p><a href='/profiles/Bhavesh Gehani\' class='username' data-user-id='367654'>"+disBoardList.get(i).getEmail_id()+
						"</a> <br><small>"+disBoardList.get(i).getTime()+"<br></small>" + 
						"</p></div></div><div class ='clearfix'></div>"
						+ "<h4 style='line-height: 1.4; word-wrap: break-word;'><p>" +disBoardList.get(i).getContent()+"</h4></div></div>";
						
			 res=res+query;
		 }
		 response.getWriter().println(res);
		/*response.getWriter().println("<div class='panel panel-default' style='border-top: 4px solid #2196f3'><div class='panel-body'><div class='row'><div class='col-sm-6'>" + 
				"<p><a href='/profiles/Bhavesh Gehani\' class='username' data-user-id='367654'>"+username+
				"</a> <br><small>"+new Date()+"<br></small>" + 
				"</p></div><div class='col-sm-6'><div class='text-right'><p>Posted in:<br><a href='/discussions/lor-sop-transcripts-documents-13\'><span class='label' style='background-color:#2196f3;'>LOR, SOP, TRANSCRIPTS AND...</span></a> </p></div></div></div><div class ='clearfix'></div>"
				+ "<h4 style='line-height: 1.4; word-wrap: break-word;'><p>" + "xyz"+
				"</h4></div></div>");*/
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
