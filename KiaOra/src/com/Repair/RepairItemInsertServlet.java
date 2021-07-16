package com.Repair;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RepairItemInsertServlet
 */
@WebServlet("/RepairItemInsertServlet")
public class RepairItemInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusID = request.getParameter("cusID");
		String ItemName = request.getParameter("ritemName");
		String WarrantyStatus = request.getParameter("warranty_status");
		String DamageDescription = request.getParameter("damageDescription");
		double Amount = Double.parseDouble(request.getParameter("amount"));
		String ReturningDate=request.getParameter("returningDate");
		
		boolean isTrue=true;
		
RepairCustomerDBUtil.insertRepairItem(cusID,ItemName,WarrantyStatus,DamageDescription,Amount,ReturningDate);
		
		if(isTrue) {
			RequestDispatcher dis = request.getRequestDispatcher("RepairSuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RepairCustomerUnsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
