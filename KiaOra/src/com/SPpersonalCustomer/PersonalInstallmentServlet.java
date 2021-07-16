package com.SPpersonalCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class PersonalInstallmentServlet
 */
@WebServlet("/PersonalInstallmentServlet")
public class PersonalInstallmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int OrderID = Integer.parseInt(request.getParameter("payID"));
		
		try {
			
			List<PersonalOrder> personalIntall= SPpersonalDeliveryRegisterUtil.validateOrder(OrderID);
			request.setAttribute("personalIntall", personalIntall);
			
			if(personalIntall.isEmpty()) {
				
				request.setAttribute("credential_error","This order ID has no any order!");
				RequestDispatcher dis = request.getRequestDispatcher("PersonalCusUnsuccess.jsp");
				dis.forward(request, response);
				
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("personalInstallment.jsp");
				dis.forward(request, response);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}

}
