package com.Repair;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RepairProfitInsert
 */
@WebServlet("/RepairProfitInsert")
public class RepairProfitInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String tot = request.getParameter("tot");
		//String actu = request.getParameter("actu");
		float tot =Float.parseFloat(request.getParameter("tot"));
		float actu =Float.parseFloat(request.getParameter("actu"));
		String month= request.getParameter("month");
		
		boolean isTrue=true;
		
		RepairCustomerDBUtil.insertRepairProfit(tot,actu,month);
		
		if(isTrue) {
			RequestDispatcher dis = request.getRequestDispatcher("RepairSuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RepairCustomerUnsuccess.jsp");
			dis2.forward(request, response);
		}
			
		
	}
}
