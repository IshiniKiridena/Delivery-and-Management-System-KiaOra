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
 * Servlet implementation class RepairCustomerDeleteServlet
 */
@WebServlet("/RepairCustomerDeleteServlet")
public class RepairCustomerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nic = request.getParameter("nic");
		boolean isTrue;
		isTrue=RepairCustomerDBUtil.customerDelete(nic);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("RepairSuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<RepairCustomer> RepairCustomerDetails=RepairCustomerDBUtil.getCustomer(nic);
			request.setAttribute("RepairCustomerDetails", RepairCustomerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("RepairSuccess.jsp");
			dis.forward(request, response);
		}
	}

}
