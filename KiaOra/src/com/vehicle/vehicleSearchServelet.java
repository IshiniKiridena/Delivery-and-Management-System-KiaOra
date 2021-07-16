package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class vehicleSearchServelet
 */
@WebServlet("/vehicleSearchServelet")
public class vehicleSearchServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String no=request.getParameter("no");
		System.out.println(no);
		try {
		
			
			
		List<vehicle> cusDetails =vehicleDBUtill.validate(no);
		request.setAttribute("cusDetails", cusDetails);
		
		for(vehicle o:cusDetails) {
            System.out.println(o.getType());
      
        }
		
		
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		RequestDispatcher dis=request.getRequestDispatcher("vehicleDetails.jsp");
		dis.forward(request,response);	
	}

}
