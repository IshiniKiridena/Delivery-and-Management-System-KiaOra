package com.shopCatering;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class shopCateringHandler
 */
@WebServlet("/shopCateringHandler")
public class shopCateringHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			if(request.getParameter("AddNewShop") != null) {
		       try {
		        	
		        	ArrayList<StreetClass> streetList = shopDBUtil.streetlist();
		            request.setAttribute("streetList", streetList);
		            
		            for(StreetClass o:streetList) {
						System.out.println(o.getId());
						System.out.println(o.getName());
					}
		 
		            RequestDispatcher dispatcher = request.getRequestDispatcher("shopRegister.jsp");
		            dispatcher.forward(request, response);
		 
		        } catch (Exception e) {
		            e.printStackTrace();
		            throw new ServletException(e);
		        }
	
			 }	 
			
			 else if(request.getParameter("Orders") != null) {
			 
					
					//navigate to search shop order page 
					RequestDispatcher dis = request.getRequestDispatcher("shopsOrderSearch.jsp");
					dis.forward(request, response);
					
			
			 }
			 
			 else if(request.getParameter("newOrder") != null) {
				 
					
					//navigate to search shop order page 
					RequestDispatcher dis = request.getRequestDispatcher("shopNewOrderSearch.jsp");
					dis.forward(request, response);
					
			
			 }
			
			 else if(request.getParameter("ShopDetails") != null) {
				 
					
					//navigate to search shop order page 
					RequestDispatcher dis = request.getRequestDispatcher("shopSearch.jsp");
					dis.forward(request, response);
					
			
			 }
	}

}
