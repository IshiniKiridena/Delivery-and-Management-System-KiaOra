package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Dispatch;

import sun.rmi.server.Dispatcher;

@WebServlet("/PromoDeleteCustomerServlet")
public class PromoDeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue = false;
		
		int proCusID = Integer.parseInt(request.getParameter("proCusID"));
		String procusnic = request.getParameter("procusnic");
		
		isTrue = PromoCustomerDBUtil.DeletePromoCustomer(proCusID);
		
		
		
		
		if(isTrue == true)
		{
			request.setAttribute("credential_error","Promotional customer registration successfully deleted!");
			RequestDispatcher dis = request.getRequestDispatcher("PromoMain.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
			
		
		
	}

}
