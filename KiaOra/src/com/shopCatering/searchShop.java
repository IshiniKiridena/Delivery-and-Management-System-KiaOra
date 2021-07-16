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
 * Servlet implementation class searchShop
 */
@WebServlet("/searchShop")
public class searchShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get data from the form
		String shopID = request.getParameter("shopID");
		
		boolean isTrue1;
		
		//check whether the shop in the system or not
		isTrue1 = shopDBUtil.checkShopavailability(shopID);
		
		if(isTrue1 == true) {//if shop exist
			
			//retrieve shop details		
			
			ArrayList<ShopClass> sDetails =  shopDBUtil.getShopdetails(shopID);
			request.setAttribute("sDetails", sDetails);
			//navigate to Shop Profile 
			RequestDispatcher dis = request.getRequestDispatcher("shopprofile.jsp");
			dis.forward(request, response);
		}
		else {
			
			//else redirect to shopSearch.jsp search shop again
			
			request.setAttribute("errorMsg", "Entered Shop ID does not exist.");

			
			RequestDispatcher dis3 = request.getRequestDispatcher("shopSearch.jsp");
			dis3.forward(request, response);
		}
		
		
		
		
	}

}
