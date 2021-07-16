package com.SPpersonalCustomer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerUpdateServlet")
public class PersonalCustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("cusID"));
		//String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		int phone = Integer.parseInt(request.getParameter("phone"));
		//String phone = request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue = SPpersonalDeliveryRegisterUtil.updateCustomer(id, name, nic, address, street, city, phone);
		
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
