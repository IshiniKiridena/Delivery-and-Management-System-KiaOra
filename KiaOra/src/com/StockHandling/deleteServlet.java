package com.StockHandling;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//onne
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String modelID = request.getParameter("modelID");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		double unitprice = Double.parseDouble(request.getParameter("unitprice")) ;
		String warranty = request.getParameter("warranty");
		int qunatity = Integer.parseInt(request.getParameter("quantity"));
		int minimumlimit = Integer.parseInt(request.getParameter("minimumlimit"));
		
		boolean isTrue;
		//isTrue = DButil.deleteModel(modelID, brand, category, unitprice, warranty, qunatity, minimumlimit);

		//if (isTrue == true) {
		//	RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
		//	dis.forward(request, response);
		//} else {
		//	RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
		//	dis.forward(request, response);
		//}
		
		
	}

}
