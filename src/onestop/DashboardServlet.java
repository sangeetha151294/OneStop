package onestop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DashboardServlet
 */
@WebServlet("/DashboardServlet")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		;
		detailsDB db=new detailsDB();
		 ArrayList<details> detailList=new ArrayList<details>();
		 int cid=(int)request.getSession().getAttribute("cid");
		 
		 String type= request.getParameter("type");
		 if(type.equals("1"))
		 {
		 detailList = db.getCollegeDetails(cid, "Bank");
		 }
		 else if(type.equals("2"))
		 {
			 detailList = db.getCollegeDetails(cid, "carrier");
		 }
		 else if(type.equals("3"))
		 {
			 detailList = db.getCollegeDetails(cid, "Housing");
		 }
		 else if(type.equals("4"))
		 {
			 detailList = db.getCollegeDetails(cid, "IdCard");
		 }
		 request.setAttribute("detail", detailList);
		 request.getRequestDispatcher("gettingStarted.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
