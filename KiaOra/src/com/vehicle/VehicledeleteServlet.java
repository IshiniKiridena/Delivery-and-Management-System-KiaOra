package com.vehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/VehicledeleteServlet")
public class VehicledeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String no =request.getParameter("no");
		boolean isTrue;
		
		isTrue=vehicleDBUtill.deletevehicle(no);
		
		System.out.println(no);
		
		if(isTrue==true) {
			
			RequestDispatcher dispatchar = request.getRequestDispatcher("Dsuccess.jsp");
			dispatchar.forward(request,response);
		}else
		{
			RequestDispatcher dispatchar = request.getRequestDispatcher("Deliveryunsuccess.jsp");
			dispatchar.forward(request,response);
		}
		
		
		
		
		
	}

}
