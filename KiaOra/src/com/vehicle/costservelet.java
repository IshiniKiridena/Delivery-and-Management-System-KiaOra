package com.vehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class costservelet
 */
@WebServlet("/costservelet")
public class costservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String Vno=request.getParameter("Vno");
		
		int Cname = Integer.parseInt(request.getParameter("Cname"));

		String Date=request.getParameter("Date");
		float cost = Float.parseFloat(request.getParameter("cost"));
	
		
		@SuppressWarnings("unused")
		boolean isTrue;
		isTrue=vehicleDBUtill.insertcost(Vno,Cname,cost,Date) ;
		
		if(isTrue=true) {
			RequestDispatcher dis=request.getRequestDispatcher("Csuccess.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("Deliveryunsuccess.jsp");
			dis.forward(request, response);
		
	}
		
		
		
		
	}

}
