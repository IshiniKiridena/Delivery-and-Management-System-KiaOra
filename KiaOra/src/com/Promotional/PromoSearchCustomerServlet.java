package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PromoSearchCustomerServlet")
public class PromoSearchCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String procusnic = request.getParameter("procusnic");
		
		try {
			
			List<ProCustomer> proCustomerSearch= PromoCustomerDBUtil.SearchCustomer(procusnic);
			request.setAttribute("proCustomerSearch",proCustomerSearch);
			
			if(proCustomerSearch.isEmpty()) {
				
				request.setAttribute("credential_error","No registration has been done for this National Identity Card number!");
				RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("PromoCustomerSearch.jsp");
				dis.forward(request, response);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}

}
