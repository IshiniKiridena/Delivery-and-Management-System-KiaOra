package com.finance;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Bill_SearchServlet")
public class Bill_SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catching data from form
		String month = request.getParameter("month");
		String utility_type = request.getParameter("utility_type");
		
		try {
			//calling search method
			List<Bill> billDetails = BillDBUtil.searchBill(month, utility_type);
			request.setAttribute("billDetails", billDetails); 
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		//redirecting to the relavent page
		RequestDispatcher dis = request.getRequestDispatcher("Bill_Details.jsp");
		dis.forward(request, response);
		
		
	}

}
