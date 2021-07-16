package com.SPpersonalCustomer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class PersonalUpdateInstallServlet
 */
@WebServlet("/PersonalUpdateInstallServlet")
public class PersonalUpdateInstallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		boolean isTrue;
		
		int OrderID = Integer.parseInt(request.getParameter("orderID"));
		double UpdateAmount = Double.parseDouble(request.getParameter("amount"));			
		double proAmount =	Double.parseDouble(request.getParameter("proAmount"));	
		String ProUpdateDate = request.getParameter("date");
		String paymentStatus = request.getParameter("status");
		
		isTrue= SPpersonalDeliveryRegisterUtil.UpdateInstallment(OrderID, UpdateAmount, proAmount, paymentStatus, ProUpdateDate);
		

		if(isTrue = true) {
			
			request.setAttribute("credential_error","The installment was successfully updated!");
					
			RequestDispatcher dis = request.getRequestDispatcher("PersonalCusSuccess.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("PersonalCusUnsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
