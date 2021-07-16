package com.StockHandling;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/modelInsert_servlet")
public class modelInsert_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//declare variables and assign values passed from insert form
		String modelID = request.getParameter("modelID");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		double unitprice = Double.parseDouble(request.getParameter("unitprice"));
		String warranty = request.getParameter("warranty");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int mil =Integer.parseInt(request.getParameter("mil"));
		
		boolean isTrue;
		
		//pass the values to dbutil and assign its return value to another boolean variable
		isTrue = modelsDBUtil.insertModels(modelID, brand, category, unitprice, warranty, quantity, mil);
		
		//check the db connection is success
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("St_success.jsp");
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("St_unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
