package com.Promotional;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PromoCustomerServlet")
public class PromoCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String procusname = request.getParameter("procusname");
		String procusnic = request.getParameter("procusnic");
		int procuscontact = Integer.parseInt(request.getParameter("procuscontact"));
		String promoline = request.getParameter("promoline");
		String promocity = request.getParameter("promocity");
		String promostreet = request.getParameter("promostreet");
		String procompaddress = request.getParameter("procompaddress");
		String procmpanyname = request.getParameter("procmpanyname");
		
		HttpSession session = request.getSession();
		session.setAttribute("nic",procusnic);
		

		
		boolean isTrue;
		boolean allreadyreg;
		
		
		allreadyreg = PromoCustomerDBUtil.ValidateCustomerInsert(procusnic);
		
		
		if(allreadyreg == true)
		{
			request.setAttribute("credential_error","Customer allready exists. Return to homepage!");
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
		else {
			
			isTrue = PromoCustomerDBUtil.insertPromoCustomer(procusname, procusnic,promoline,promostreet,promocity,procuscontact,procmpanyname, procompaddress);
			request.setAttribute("credential_error","Succecsfully Updated Customer Registration!");
		}
		
		
		if(isTrue = true) {
			
			List<ProCustomer> proCustomerDetails= PromoCustomerDBUtil.SearchCustomer(procusnic);
			request.setAttribute("proCustomerDetails",proCustomerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PromoOrderInsert.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<ProCustomer> proCustomerDetails= PromoCustomerDBUtil.SearchCustomer(procusnic);
			request.setAttribute("proCustomerDetails",proCustomerDetails);
			RequestDispatcher dis = request.getRequestDispatcher("PromoError.jsp");
			dis.forward(request, response);
		}
	}

}
