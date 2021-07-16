package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PromoSearchOrderServlet")
public class PromoSearchOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int proOrderID = Integer.parseInt(request.getParameter("proOrderID"));
		
		try {
			
			List<ProCustomerOrder> proUpdateOrderDetails= PromoCustomerDBUtil.SearchPreviousCustomerOrder(proOrderID);
			request.setAttribute("proUpdateOrderDetails",proUpdateOrderDetails);
			
			if(proUpdateOrderDetails.isEmpty())
			{
				request.setAttribute("credential_error","This order ID has no any order!");
				RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
				dis.forward(request, response);
				
			}
			else {
				
				RequestDispatcher dis = request.getRequestDispatcher("PromoOrderSearch.jsp");
				dis.forward(request, response);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
