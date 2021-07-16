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
 * Servlet implementation class supoderdelete_servlet
 */
@WebServlet("/supoderdelete_servlet")
public class supoderdelete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String convertid = request.getParameter("convertid");
				
		boolean isTrue;
		
		isTrue=SupplierDButill.deleteorder(id);
		
		if(isTrue == true) {
			
			
			 System.out.println("id '"+convertid+"'");
			
			  RequestDispatcher dis = request.getRequestDispatcher("supsuccess.jsp");
			  dis.forward(request, response);
			
			}
			else{
				  ArrayList<Supplier> supDetails = SupplierDButill.getSupplierDetails(convertid);
				  request.setAttribute("supDetails",supDetails);
				
				  
				  RequestDispatcher dis = request.getRequestDispatcher("supunsuccess.jsp");
				  dis.forward(request, response);
			}
		
		
		
		
	}

}
