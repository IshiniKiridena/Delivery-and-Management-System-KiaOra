package com.SPpersonalCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SPperonalDeliveryRegisterServlet")
public class PeronalDeliveryRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String NIC = request.getParameter("nic");
		String addressLine = request.getParameter("address");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		int phoneNo = Integer.parseInt(request.getParameter("phone"));
		
		
		int routeId = SPpersonalDeliveryRegisterUtil.getRouteID(street);
		
		boolean isTrue = true;
		
		SPpersonalDeliveryRegisterUtil.insertPersonalCustomer(name, NIC, addressLine, street, city, phoneNo, routeId);
		
		if(isTrue) {
			
			List <SPdeliveryCustomer> cusId = SPpersonalDeliveryRegisterUtil.validate(NIC);
			 request.setAttribute("cusId",cusId);
			 
			RequestDispatcher dis = request.getRequestDispatcher("personalOrderRegister.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("PersonalCusUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
		
		
		
			
	}

}
