package com.finance;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Bill_InsertServlet")
public class Bill_InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String utility_type = request.getParameter("utility_type");
		String dueDate = request.getParameter("dueDate");
		String status = request.getParameter("status");
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
		String month = request.getParameter("month");
		
		boolean isInsertSuccess;
		
		//calling insert		
		isInsertSuccess = BillDBUtil.insertBill(utility_type, dueDate, status, amount, date, month);
		
		//check succession
		if(isInsertSuccess == true) {
			//if success redirecting to success page
			RequestDispatcher dis1 = request.getRequestDispatcher("BillInsertSuccess.jsp");
			dis1.forward(request, response);
		}
		else {
			//if not success redirect to unsuccess page
			RequestDispatcher dis2 = request.getRequestDispatcher("BillInsertUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
