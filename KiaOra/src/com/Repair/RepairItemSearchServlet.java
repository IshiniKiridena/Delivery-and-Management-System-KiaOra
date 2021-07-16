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
 * Servlet implementation class RepairItemSearchServlet
 */
@WebServlet("/RepairItemSearchServlet")
public class RepairItemSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusID = request.getParameter("cusID");
		
		
		try {
			//calling search method
			List<RepairItem>RepairItemDetails = RepairCustomerDBUtil.searchItem(cusID);
			request.setAttribute("RepairItemDetails", RepairItemDetails); 
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		//redirecting to the relavent page
		RequestDispatcher dis = request.getRequestDispatcher("RepairItemDetails.jsp");
		dis.forward(request, response);
		
		
	}
	

}
