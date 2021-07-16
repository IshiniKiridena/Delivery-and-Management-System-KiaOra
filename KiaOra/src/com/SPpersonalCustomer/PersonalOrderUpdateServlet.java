package com.SPpersonalCustomer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateOrderServlet")
public class PersonalOrderUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String oid =request.getParameter("oid");
		String due = request.getParameter("dueDate");
		String amount =  request.getParameter("amountPaid");  
		String credit = request.getParameter("creditPeriod");
		String unit = request.getParameter("unitPrice") ; 
		String status = request.getParameter("status");
		String odate = request.getParameter("orderDate");
		String prevstatus = request.getParameter("prevstatus");
		
		
		boolean isTrue;
		
		isTrue = SPpersonalDeliveryRegisterUtil.updateOrder(oid, due, amount, credit, unit, status, odate,prevstatus);
		
		if(isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("PersonalCusSuccess.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher("PersonalCusUnsuccess.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
