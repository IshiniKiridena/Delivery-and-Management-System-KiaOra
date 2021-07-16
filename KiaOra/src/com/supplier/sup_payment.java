package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sup_payment
 */
@WebServlet("/sup_payment")
public class sup_payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
		float amount=Float.parseFloat(request.getParameter("amount"));
		String date=request.getParameter("date");
	
		int SupplierID=Integer.parseInt(request.getParameter("SupplierID"));
		System.out.println(amount);
		System.out.println(date);
		System.out.println(SupplierID);
		
		boolean isTrue;
		isTrue=SupplierDButill.insertpayment(amount,date,SupplierID) ;
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("supsuccess.jsp");
			dis.forward(request,response);
		}

		else {
			RequestDispatcher dis=request.getRequestDispatcher("supunsuccess.jsp");
			dis.forward(request, response);
		
	}
	}

	     catch(Exception e) {
		
	}
	}
}
