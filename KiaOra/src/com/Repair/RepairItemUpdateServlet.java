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
 * Servlet implementation class RepairItemUpdateServlet
 */
@WebServlet("/RepairItemUpdateServlet")
public class RepairItemUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public RepairItemUpdateServlet() {
     
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusID = request.getParameter("cusID");
		String rItemNo = request.getParameter("rItemNo");
		String ritemName = request.getParameter("ritemName");
		String warranty_status = request.getParameter("warranty_status");
		String damageDescription = request.getParameter("damageDescription");
		String amount = request.getParameter("amount");
		String returningDate= request.getParameter("returningDate");
	
		boolean isUpdated;
		System.out.print("error update");
		
		isUpdated = RepairCustomerDBUtil.itemUpdate(cusID,ritemName,warranty_status, damageDescription, amount,returningDate);
		
		if(isUpdated == true) {
			List<RepairItem>RepairItemDetails = RepairCustomerDBUtil.getItem(cusID);
			request.setAttribute("RepairItemDetails", RepairItemDetails); 
			
			RequestDispatcher dis = request.getRequestDispatcher("RepairItemDetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("RepairUnsuccess.jsp");
			dis.forward(request, response);
		}
		
	}
	

}
