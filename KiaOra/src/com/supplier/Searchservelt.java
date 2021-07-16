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
 * Servlet implementation class Searchservelt
 */
@WebServlet("/Searchservelt")
public class Searchservelt extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String company_name = request.getParameter("Supplier_Details");
		System.out.println(company_name);
		
		try {
		ArrayList<Supplier>  supDetails= SupplierDButill.validate(company_name);
		request.setAttribute("supDetails", supDetails);
         for(Supplier o:supDetails) {
			
			
			System.out.println(o.getId());
		}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("supplierdetails.jsp");
		dis.forward(request, response);
		
		
		
	}

}
