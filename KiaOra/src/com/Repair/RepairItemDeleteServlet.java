package com.Repair;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RepairItemDeleteServlet
 */
@WebServlet("/RepairItemDeleteServlet")
public class RepairItemDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RepairItemDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusID = request.getParameter("cusID");
		boolean isTrue;
		isTrue=RepairCustomerDBUtil.itemDelete(cusID);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("RepairSuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<RepairItem> RepairItemDetails=RepairCustomerDBUtil.getItem(cusID);
			request.setAttribute("RepairItemDetails", RepairItemDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
	}

	

}
