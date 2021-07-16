package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PromoDeleteOrderServlet")
public class PromoDeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue,updateQty;
		
		int proOrderID = Integer.parseInt(request.getParameter("proOrderID"));
		
		//updateQuentity
		String proItem = request.getParameter("proItem");
		int proItemQuantity = Integer.parseInt(request.getParameter("proItemQuantity"));
		
		isTrue = PromoCustomerDBUtil.DeletePromoCustomerOrder(proOrderID);
		updateQty = PromoCustomerDBUtil.UpdateDeleteQuantity(proItem, proItemQuantity);
		
		if(isTrue == true) {
			
			request.setAttribute("credential_error","Promotional order successfully deleted!");
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoMain.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
	}

}
