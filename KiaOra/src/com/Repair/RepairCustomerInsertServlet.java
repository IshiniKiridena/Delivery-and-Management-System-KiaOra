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
 * Servlet implementation class RepairCustomerInsertServlet
 */
@WebServlet("/RepairCustomerInsertServlet")
public class RepairCustomerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String AddressLine = request.getParameter("AddressLine");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		int phone =Integer.parseInt(request.getParameter("phone"));
		//String phoneNo = request.getParameter("phoneNo");
		 System.out.println("Name"+name);
	
		
		boolean isTrue=true;
		
		RepairCustomerDBUtil.insertRepairCustomer(name, nic, AddressLine, street, city, phone);
		
		if(isTrue) {
			
			List<RepairCustomer> RepairCustomerDetails = RepairCustomerDBUtil.searchCustomer(nic);
			request.setAttribute("RepairCustomerDetails", RepairCustomerDetails); 
	            
			RequestDispatcher dis = request.getRequestDispatcher("RepairItemInsert.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RepairCustomerUnsuccess.jsp");
			dis2.forward(request, response);
		}
			
		
	}

}
