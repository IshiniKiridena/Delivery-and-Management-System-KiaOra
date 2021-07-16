package com.Promotional;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ProOrderServlet")
public class ProOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DOUBLE_PARSER = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int promocusID = Integer.parseInt(request.getParameter("promocusID"));
		
		String proItem = request.getParameter("proItem");
				
		double proItemUnPrice =	Double.parseDouble(request.getParameter("proItemUnPrice"));
			
		int proItemQuantity = Integer.parseInt(request.getParameter("proItemQuantity"));
			
		float proItemUnDiscount = Float.parseFloat(request.getParameter("proItemUnDiscount"));
			
		double proAmount =	Double.parseDouble(request.getParameter("proAmount"));
			
		String paymentStatus = request.getParameter("paymentStatus");
		
		String proPurchasedDate = request.getParameter("proPurchasedDate");
		
		
		HttpSession session = request.getSession();
		String procusnic = (String) session.getAttribute("nic");
		

		
		
		boolean isTrue,quantitiyUpdate;
		
		isTrue = PromoCustomerDBUtil.insertProOrder(proPurchasedDate, proItemUnDiscount, proAmount, proItemUnPrice, proItemQuantity,paymentStatus, promocusID, proItem);
		quantitiyUpdate = PromoCustomerDBUtil.UpdateQuantity(proItem, proItemQuantity);
		
		if(isTrue = true) {
			
			List<ProCustomer> proCustomerDetails2= PromoCustomerDBUtil.SearchNewCustomer(promocusID);
			request.setAttribute("proCustomerDetails2",proCustomerDetails2);
			
			List<ProCustomerOrder> proCustomerDetails= PromoCustomerDBUtil.SearchCustomerOrder();
			request.setAttribute("proCustomerOrderDetails",proCustomerDetails);
			
			request.setAttribute("credential_error","Succecsfully Updated Promotional Order!");
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoOrderDetails.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<ProCustomerOrder> proCustomerDetails= PromoCustomerDBUtil.SearchCustomerOrder();
			request.setAttribute("proCustomerOrderDetails",proCustomerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
		
	}

}
