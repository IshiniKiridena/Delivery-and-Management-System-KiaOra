package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PromoUpdateCustomerServlet")
public class PromoUpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrueCustomer;
		
		String procusname = request.getParameter("procusname");
		String procusnic = request.getParameter("procusnic");
		int procuscontact = Integer.parseInt(request.getParameter("procuscontact"));
		String promoline = request.getParameter("promoline");
		String promocity = request.getParameter("promocity");
		String promostreet = request.getParameter("promostreet");
		String procompaddress = request.getParameter("procompaddress");
		String procmpanyname = request.getParameter("procmpanyname");	
		int proCusID = Integer.parseInt(request.getParameter("proCusID"));
		
		isTrueCustomer = PromoCustomerDBUtil.UpdatePromoCustomer(proCusID, procusname, procusnic, procuscontact, promoline, promocity, promostreet, procompaddress, procmpanyname);
		
		
	
		if(isTrueCustomer == true)
		{

			List<ProCustomer> proCustomerSearch= PromoCustomerDBUtil.SearchCustomer(procusnic);
			request.setAttribute("proCustomerSearch",proCustomerSearch);
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoCustomerSearch.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
	}

}
