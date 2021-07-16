package com.StockHandling;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateModelDetailsServlet")
public class updateModelDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String modelID = request.getParameter("modelID");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		double unitprice = Double.parseDouble(request.getParameter("unitprice"));
		String warranty = request.getParameter("warranty");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int minimumlimit = Integer.parseInt(request.getParameter("mil"));
		
		boolean isTrue;
		isTrue = modelsDBUtil.updateModelDetails(modelID, brand, category, unitprice, warranty, quantity, minimumlimit);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("St_success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("St_unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
