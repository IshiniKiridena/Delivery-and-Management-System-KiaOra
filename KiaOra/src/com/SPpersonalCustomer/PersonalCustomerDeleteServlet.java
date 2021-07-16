package com.SPpersonalCustomer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SP_DeleteCustomerServlet")
public class PersonalCustomerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt( request.getParameter("cusID")); 
		
		boolean isTrue;
		
		isTrue = SPpersonalDeliveryRegisterUtil.deleteCustomer(id);
		
		if(isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("PersonalCusSuccess.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher("PersonalCusUnsuccess.jsp");
			dis.forward(request, response);
		}
		
		System.out.print(id);
		
		
		
		
	}

}
