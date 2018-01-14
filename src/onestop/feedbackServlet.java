package onestop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackServlet
 */
@WebServlet("/feedbackServlet")
public class feedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	detailsDB ddb=new detailsDB();
		int cid=(int) request.getSession().getAttribute("cid");
		ArrayList<details> detailList=new ArrayList<details>();
		detailList=ddb.getCollegeDetails(cid,"Housing");
		request.setAttribute("apt",detailList);
		ArrayList<details> detailList2=new ArrayList<details>();
		detailList2=ddb.getCollegeDetails(cid,"carrier");
		request.setAttribute("carrier",detailList2);
		ArrayList<details> detailList3=new ArrayList<details>();
		detailList3=ddb.getCollegeDetails(cid,"Bank");
		request.setAttribute("bank",detailList3);
		request.getRequestDispatcher("feedback.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
