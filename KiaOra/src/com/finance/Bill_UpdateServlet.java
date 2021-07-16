package com.finance;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Bill_UpdateServlet")
public class Bill_UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bill_code = request.getParameter("bill_code");
		String utility_type = request.getParameter("utility_type");
		String dueDate = request.getParameter("dueDate");
		String status = request.getParameter("status");
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
		String month = request.getParameter("month");
	
		boolean isUpdated;
		
		isUpdated = BillDBUtil.updateBill(bill_code, utility_type, dueDate, status, amount, date, month);
		
		if(isUpdated == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Bill_Update_Success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Bill_Update_Unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
