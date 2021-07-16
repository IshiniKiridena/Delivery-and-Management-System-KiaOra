package com.StockHandling;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int SupOID = Integer.parseInt(request.getParameter("SupOID"));
		int quantity = Integer.parseInt(request.getParameter("Quantity"));
		String Amount = request.getParameter("Amount");
		String Credit_Period = request.getParameter("Credit_Period");
		String SupplierID = request.getParameter("SupplierID");
		String modelID = request.getParameter("modelID");
		String status = request.getParameter("status");
		

		boolean isTrue;
		isTrue = modelsDBUtil.updateStock(SupOID, quantity, Amount, Credit_Period, SupplierID, modelID, status);
		//isTrue = DButil.updateStock(SupOID, modelID, quantity, status);

		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("St_success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("St_unsuccess.jsp");
			dis.forward(request, response);
		}

	}

}
