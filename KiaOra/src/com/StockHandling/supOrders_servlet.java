/*package com.StockHandling;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/supOrders_servlet")
public class supOrders_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private modelsDBUtil modelsDBUtil;

    public supOrders_servlet() {
        //this.modelsDBUtil = new modelsDBUtil();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<supOrders> listOrders = modelsDBUtil.viewSupOrders();
		request.setAttribute("listOrders", listOrders);
		RequestDispatcher dis = request.getRequestDispatcher("St_list.jsp");
		dis.forward(request, response);
	}

}
*/