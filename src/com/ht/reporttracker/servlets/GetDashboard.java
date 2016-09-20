package com.ht.reporttracker.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetDashboard
 */
@WebServlet("/GetDashboard")
public class GetDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDashboard() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("********************");
		String user = request.getParameter("user");
		if(user==null)user="admin";
		String locationPicker = request.getParameter("locationPicker");
		String soPicker = request.getParameter("soPicker");
		String modelPicker = request.getParameter("modelPicker");
		String datepickerFrom = request.getParameter("datepickerFrom");
		String datepickerTo = request.getParameter("datepickerTo");
		request.getSession().setAttribute("user", user);
		request.getSession().setAttribute("inquiries", "160");
		request.getSession().setAttribute("testdrives", "140");
		request.getSession().setAttribute("orderbookings", "120");
		request.getSession().setAttribute("invoices", "100");
		request.getSession().setAttribute("locawiseInquiries", "Hyderabad = 40"+", "+"Vijayawada = 30"+", "+"Tirupati = 50"+", "+"Vishakapatnam = 40");
		request.getSession().setAttribute("locawiseTestdrives", "Hyderabad = 30"+", "+"Vijayawada = 20"+", "+"Tirupati = 50"+", "+"Vishakapatnam = 40");
		request.getSession().setAttribute("locawiseOrderbookings", "Hyderabad = 20"+", "+"Vijayawada = 20"+", "+"Tirupati = 40"+", "+"Vishakapatnam = 40");
		request.getSession().setAttribute("locawiseInvoices", "Hyderabad = 10"+", "+"Vijayawada = 10"+", "+"Tirupati = 40"+", "+"Vishakapatnam = 40");

		response.sendRedirect("dashboard.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
