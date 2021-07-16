package com.SPpersonalCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderSearchServlet")
public class PersonalOrderSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int orderId =  Integer.parseInt(request.getParameter("oid"));
		

		try {
	
		List <PersonalOrder> orderDetails = SPpersonalDeliveryRegisterUtil.validateOrder(orderId);
		request.setAttribute("orderDetails", orderDetails);
		
		} catch(Exception e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher dis2 = request.getRequestDispatcher("PersonalorderAccount.jsp");
		dis2.forward(request, response);
		
		System.out.println(orderId);
		
	}
	
	

}
