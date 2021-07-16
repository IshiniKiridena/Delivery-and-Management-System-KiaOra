package com.supplier;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class delete_servlet
 */
@WebServlet("/delete_servlet")
public class delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String companyname = request.getParameter("companyname");
		System.out.println("Supllier id " + id);
				
		boolean isTrue;
		
		isTrue=SupplierDButill.deletesupplier(id);
		
		if(isTrue == true) {
			
			
			
			  RequestDispatcher dis = request.getRequestDispatcher("supsuccess.jsp");
			  dis.forward(request, response);
			
			}
			else{
				  ArrayList<Supplier> supDetails = SupplierDButill.getSupplierDetails(companyname);
				  request.setAttribute("supDetails",supDetails);
				
				  
				  RequestDispatcher dis = request.getRequestDispatcher("supunsuccess.jsp");
				  dis.forward(request, response);
			}
		

	
		}
}
