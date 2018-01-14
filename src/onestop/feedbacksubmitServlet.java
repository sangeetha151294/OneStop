package onestop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbacksubmitServlet
 */
@WebServlet("/feedbacksubmitServlet")
public class feedbacksubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedbacksubmitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String emailid=(String) request.getSession().getAttribute("emailid");
		
		feedbackDB fd=new feedbackDB();
		if(request.getParameter("apt")!=null)
		{
		   String name=request.getParameter("apt");
		   int rating=Integer.parseInt(request.getParameter("aptrating"));
		   if(request.getParameter("message")!=null)
			{
			   fd.insertFeedback(emailid, "Apartment", name, rating, request.getParameter("message"));
			}
		   else
		   {
			   fd.insertFeedback(emailid, "Apartment", name, rating,null); 
		   }
		}
		
		response.sendRedirect("/OneStop/dashboard.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
