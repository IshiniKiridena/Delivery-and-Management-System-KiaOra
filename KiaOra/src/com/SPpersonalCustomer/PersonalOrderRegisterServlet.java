package com.SPpersonalCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SPpersonalOrderServlet
 */
@WebServlet("/SPpersonalOrderServlet")
public class PersonalOrderRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int cusID =  Integer.parseInt(request.getParameter("id"));
		String itemCode = request.getParameter("code");
		double unitPrice = Double.parseDouble(request.getParameter("price"));
		double initpay = Double.parseDouble(request.getParameter("initpay"));
		String status = request.getParameter("status");
		String pDay = request.getParameter("pday");
		String dDay = request.getParameter("dday");
		
		System.out.println(itemCode);
		
		
		
		boolean isTrue = true;
		
		SPpersonalDeliveryRegisterUtil.insertPersonalOrder(cusID, itemCode, unitPrice, initpay, status, pDay, dDay);
		
		if(isTrue) {

			List <PersonalOrder> disorder = SPpersonalDeliveryRegisterUtil.SearchCustomerOrder();
			 request.setAttribute("disorder",disorder);
			 
			RequestDispatcher dis = request.getRequestDispatcher("PersonalCustomerRegister.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("PersonalCusUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
	
		
			
		
	
	}

}
