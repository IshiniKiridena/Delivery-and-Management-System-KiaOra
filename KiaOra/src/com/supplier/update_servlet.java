package com.supplier;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.*;


/**
 * Servlet implementation class update_servlet
 */
@WebServlet("/update_servlet")
public class update_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String companyname = request.getParameter("companyname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
		boolean isTrue;
		
		isTrue=SupplierDButill.updatesupplier(id, companyname, phone, address);
		
		
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
