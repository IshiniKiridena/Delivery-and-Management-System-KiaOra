package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Supplier_insertServelt
 */
@WebServlet("/Supplier_insertServelt")
public class Supplier_insertServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
	
		String companyname=request.getParameter("Company");
		String phone=request.getParameter("Sup_phone");
		String address=request.getParameter("Sup_Address");
	
		System.out.println(address);
		
		boolean isTrue;
		isTrue=SupplierDButill.insertsupplier(companyname,phone,address) ;
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("supsuccess.jsp");
			dis.forward(request,response);
		}

		else {
			RequestDispatcher dis=request.getRequestDispatcher("supunsuccess.jsp");
			dis.forward(request, response);
		
	}

		
		
		
	}

}
