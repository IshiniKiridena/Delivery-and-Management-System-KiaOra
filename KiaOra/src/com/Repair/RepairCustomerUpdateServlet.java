package com.Repair;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RepairCustomerUpdateServlet
 */
@WebServlet("/RepairCustomerUpdateServlet")
public class RepairCustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String cusID = request.getParameter("cusID");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String AddressLine = request.getParameter("addressLine");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		int phone =Integer.parseInt(request.getParameter("phone"));
	
		boolean isUpdated;
		System.out.print("error update");
		
		isUpdated = RepairCustomerDBUtil.customerUpdate(name, nic,AddressLine, street, city, phone);
		
		if(isUpdated == true) {
			
			List<RepairCustomer> RepairCustomerDetails=RepairCustomerDBUtil.getCustomer(nic);
			request.setAttribute("RepairCustomerDetails", RepairCustomerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("RepairCustomerAccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<RepairCustomer> RepairCustomerDetails=RepairCustomerDBUtil.getCustomer(nic);
			request.setAttribute("RepairCustomerDetails", RepairCustomerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("RepairCustomerAccount.jsp");
			dis.forward(request, response);
		}
		
	}

}