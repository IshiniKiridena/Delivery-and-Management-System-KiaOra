package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProSearchInstallmentServlet")
public class ProSearchInstallmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int proOrderID = Integer.parseInt(request.getParameter("proOrderID"));
		
		try {
			
			List<ProCustomerOrder> proInstallment= PromoCustomerDBUtil.SearchPreviousCustomerOrder(proOrderID);
			request.setAttribute("proInstallment",proInstallment);
			
			if(proInstallment.isEmpty()) {
				
				request.setAttribute("credential_error","This order ID has no any order!");
				RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
				dis.forward(request, response);
				
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("ProInstallementDetails.jsp");
				dis.forward(request, response);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
