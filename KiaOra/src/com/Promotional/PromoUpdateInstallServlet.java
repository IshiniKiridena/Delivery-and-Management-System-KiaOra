package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PromoUpdateInstallServlet")
public class PromoUpdateInstallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		boolean isTrue;
		
		int proOrderID = Integer.parseInt(request.getParameter("proOrderID"));
		double proUpdateAmount = Double.parseDouble(request.getParameter("proUpdateAmount"));	
		double proAmount =	Double.parseDouble(request.getParameter("proAmount"));	
		String ProUpdateDate = request.getParameter("ProUpdateDate");
		String paymentStatus = request.getParameter("paymentStatus");
		double totPayment = Double.parseDouble(request.getParameter("totPayment"));
		String modelID = request.getParameter("modelID");
		
		
		
		isTrue= PromoCustomerDBUtil.UpdateInstallment(proOrderID, proUpdateAmount, proAmount, paymentStatus, ProUpdateDate,totPayment,modelID);
		

		
		if(isTrue = true) {
			
			request.setAttribute("credential_error","The installment was successfully updated!");
					
			RequestDispatcher dis = request.getRequestDispatcher("PromoMain.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
		
	}

}
