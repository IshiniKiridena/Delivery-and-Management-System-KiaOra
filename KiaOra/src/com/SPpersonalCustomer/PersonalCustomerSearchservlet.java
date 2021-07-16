package com.SPpersonalCustomer;

import java.util.List;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PersonalCustomerSearchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nic = request.getParameter("nic");  
	 
	 
		 
		
		try {
			
			
			List <SPdeliveryCustomer> cusDetails = SPpersonalDeliveryRegisterUtil.validate(nic);
			request.setAttribute("cusDetails", cusDetails);
			
			
		
		} catch(Exception e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("SP_customerAccount.jsp");
		dis.forward(request, response);
		
		
	
		
		
		

	
		
		
		
		
		
		
	}

}
