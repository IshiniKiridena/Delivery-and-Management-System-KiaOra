package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PromoUpdateOrderServlet")
public class PromoUpdateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrueCustomerOrder;
		
		
		int proOrderID = Integer.parseInt(request.getParameter("proOrderID"));		
		String proItem = request.getParameter("proItem");			
		double proItemUnPrice =	Double.parseDouble(request.getParameter("proItemUnPrice"));			
		int proItemQuantity = Integer.parseInt(request.getParameter("proItemQuantity"));			
		float proItemUnDiscount = Float.parseFloat(request.getParameter("proItemUnDiscount"));			
		double proAmount =	Double.parseDouble(request.getParameter("proAmount"));		
		String paymentStatus = request.getParameter("paymentStatus");	
		String proPurchasedDate = request.getParameter("proPurchasedDate");
		String prevPaystatus = request.getParameter("prevPaystatus");
		
		int proPriviousquantity = Integer.parseInt(request.getParameter("proPriviousquantity"));
		String proPriviousItem = request.getParameter("proPriviousItem");
		
		
		
		isTrueCustomerOrder = PromoCustomerDBUtil.UpdatePromoCustomerOrder(proOrderID, proItem, proItemUnPrice, proItemQuantity, proItemUnDiscount, proAmount, paymentStatus, proPurchasedDate,prevPaystatus);
		boolean quantityUpdate = PromoCustomerDBUtil.UpdateNewQuantity(proPriviousItem, proItem, proItemQuantity, proPriviousquantity);
		
		if(isTrueCustomerOrder == true)
		{
			
			List<ProCustomerOrder> proUpdateOrderDetails= PromoCustomerDBUtil.SearchPreviousCustomerOrder(proOrderID);
			request.setAttribute("proUpdateOrderDetails",proUpdateOrderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoOrderSearch.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
	
	}

}
