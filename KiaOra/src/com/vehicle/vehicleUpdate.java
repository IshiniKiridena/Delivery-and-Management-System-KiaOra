package com.vehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class vehicleUpdate
 */
@WebServlet("/vehicleUpdate")
public class vehicleUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;



	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String no=request.getParameter("no");
		String type=request.getParameter("type");
		String brand=request.getParameter("brand");
		int milage=Integer.parseInt(request.getParameter("milage"));
		
		
		boolean isTure;
		
		
		isTure =vehicleDBUtill.updatevehicle(no,type,brand,milage);
		
		System.out.println(milage);
		
		if(isTure==true) {
			RequestDispatcher dis=request.getRequestDispatcher("Usuccess.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("Deliveryunsuccess.jsp");
			dis.forward(request, response);
		}
	}
	
	
	
	

	

}
