package com.supplier;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class update_servlet
 */
@WebServlet("/oderupdate_servlet")
public class supoderupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue;	
		int orderid = Integer.parseInt(request.getParameter("orderid"));
		String quantity = request.getParameter("quantity");
		String credit_Period = request.getParameter("credit_Period");
		String amount = request.getParameter("amount");
		String supplierID = request.getParameter("supplierID");
		String date = request.getParameter("date");
		String modelid = request.getParameter("modelid");
		
		System.out.println(orderid);
		
		isTrue=SupplierDButill.updateoder(orderid,quantity, credit_Period, amount, supplierID,date,modelid);
		
		
		if(isTrue == true) {
			
			
		  RequestDispatcher dis = request.getRequestDispatcher("supsuccess.jsp");
		  dis.forward(request, response);
		
		}
		else{
			  RequestDispatcher dis = request.getRequestDispatcher("supunsuccess.jsp");
			  dis.forward(request, response);
			
	}

}
}
