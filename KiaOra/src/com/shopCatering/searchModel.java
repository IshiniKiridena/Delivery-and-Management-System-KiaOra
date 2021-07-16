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
 * Servlet implementation class searchModel
 */
@WebServlet("/searchModel")
public class searchModel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				//get data from the form
				String ModelID = request.getParameter("ModelID");
				System.out.println(ModelID);
				boolean isTrue1;
				
				//check whether the model is available or not
				isTrue1 = shopDBUtil.checkModelAvailability(ModelID);
				
				if(isTrue1 == true) {
					
					System.out.println("True");
					
					//retrieve selected model details							
					ArrayList<ModelClass> mDetails =  shopDBUtil.getModeldetails(ModelID);
					request.setAttribute("mDetails", mDetails);

					
					
					//navigate to add new order page
					RequestDispatcher dis = request.getRequestDispatcher("shopAddNewOrder.jsp");
					dis.forward(request, response);
				}
				else {

					request.setAttribute("credential_error", "The inserted Model is not available.");

					RequestDispatcher dis3 = request.getRequestDispatcher("shopNewOrderSearch.jsp");
					dis3.forward(request, response);
				}
				
				
	}

}
