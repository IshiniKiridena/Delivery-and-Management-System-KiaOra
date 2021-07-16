package com.vehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class routeReg
 */
@WebServlet("/routeReg")
public class routeReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public routeReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String Rname=request.getParameter("Rname");
	
		System.out.println(Rname);
	
		
		@SuppressWarnings("unused")
		boolean isTrue;
		isTrue=vehicleDBUtill.insertroute(Rname) ;
		
		if(isTrue=true) {
			RequestDispatcher dis=request.getRequestDispatcher("vsuccess.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("Deliveryunsuccess.jsp");
			dis.forward(request, response);
		
	}

		
		
		
	}

}
