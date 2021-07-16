package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PromoUpdateServlet")
public class PromoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrueCustomer,isTrueCustomerOrder,quantityUpdate;
		
		String procusname = request.getParameter("procusname");
		String procusnic = request.getParameter("procusnic");
		int procuscontact = Integer.parseInt(request.getParameter("procuscontact"));
		String promoline = request.getParameter("promoline");
		String promocity = request.getParameter("promocity");
		String promostreet = request.getParameter("promostreet");
		String procompaddress = request.getParameter("procompaddress");
		String procmpanyname = request.getParameter("procmpanyname");	
		int proCusID = Integer.parseInt(request.getParameter("proCusID"));
		
	
		int proOrderID = Integer.parseInt(request.getParameter("proOrderID"));		
		String proItem = request.getParameter("proItem");		
		String proPriviousItem = request.getParameter("proPriviousItem");
		double proItemUnPrice =	Double.parseDouble(request.getParameter("proItemUnPrice"));			
		int proItemQuantity = Integer.parseInt(request.getParameter("proItemQuantity"));
		int proPriviousquantity = Integer.parseInt(request.getParameter("proPriviousquantity"));
		float proItemUnDiscount = Float.parseFloat(request.getParameter("proItemUnDiscount"));			
		double proAmount =	Double.parseDouble(request.getParameter("proAmount"));		
		String paymentStatus = request.getParameter("paymentStatus");
		String prevPaystatus = request.getParameter("prevPaystatus");
		String proPurchasedDate = request.getParameter("proPurchasedDate");
		
		
		
		isTrueCustomer = PromoCustomerDBUtil.UpdatePromoCustomer(proCusID, procusname, procusnic, procuscontact, promoline, promocity, promostreet, procompaddress, procmpanyname);
		
		isTrueCustomerOrder = PromoCustomerDBUtil.UpdatePromoCustomerOrder(proOrderID, proItem, proItemUnPrice, proItemQuantity, proItemUnDiscount, proAmount, paymentStatus, proPurchasedDate,prevPaystatus);
		quantityUpdate = PromoCustomerDBUtil.UpdateNewQuantity(proPriviousItem, proItem, proItemQuantity, proPriviousquantity);
		
		if(isTrueCustomer == true && isTrueCustomerOrder == true)
		{

			List<ProCustomer> proCustomerDetails2= PromoCustomerDBUtil.SearchCustomer(procusnic);
			request.setAttribute("proCustomerDetails2",proCustomerDetails2);
			
			List<ProCustomerOrder> proCustomerOrderDetails= PromoCustomerDBUtil.SearchPreviousCustomerOrder(proOrderID);
			request.setAttribute("proCustomerOrderDetails",proCustomerOrderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoOrderDetails.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
	
	}

}
