package com.ht.reporttracker.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AuthenticateUser
 */
@WebServlet("/AuthenticateUser")
public class AuthenticateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String password = request.getParameter("password");
	
		request.getSession().setAttribute("user", user);
		if(user.equalsIgnoreCase("admin")){
			
			request.getSession().setAttribute("user", user);
			
			try {
				Map<String, List<String>> statistics = ReportsDAO.getStatistics();
				for (Entry<String, List<String>> pair : statistics.entrySet()) {
					String key = pair.getKey();
					String keyType = key.split("[|]")[0];
					String keyTypeCount = key.split("[|]")[1];
					List<String> values  = pair.getValue();
					if(keyType.equalsIgnoreCase("ENQUIRY")){
						request.getSession().setAttribute("inquiries", keyTypeCount);
						for (String string : values) {
							System.out.println(string);
						}
						request.getSession().setAttribute("locawiseInquiries", values);
					}else if(keyType.equalsIgnoreCase("TD")){
						request.getSession().setAttribute("testdrives", keyTypeCount);
						request.getSession().setAttribute("locawiseTestdrives", values);
					}else if(keyType.equalsIgnoreCase("OB")){
						request.getSession().setAttribute("orderbookings", keyTypeCount);
						request.getSession().setAttribute("locawiseOrderbookings", values);
					}else if(keyType.equalsIgnoreCase("INVOICE")){
						request.getSession().setAttribute("invoices", keyTypeCount);
						request.getSession().setAttribute("locawiseInvoices", values);
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			/*request.getSession().setAttribute("inquiries", "80");
			request.getSession().setAttribute("testdrives", "70");
			request.getSession().setAttribute("orderbookings", "60");
			request.getSession().setAttribute("invoices", "50");
			request.getSession().setAttribute("locawiseInquiries", "Hyderabad = 20"+", "+"Vijayawada = 15"+", "+"Tirupati = 25"+", "+"Vishakapatnam = 20");
			request.getSession().setAttribute("locawiseTestdrives", "Hyderabad = 15"+", "+"Vijayawada = 10"+", "+"Tirupati = 25"+", "+"Vishakapatnam = 20");
			request.getSession().setAttribute("locawiseOrderbookings", "Hyderabad = 10"+", "+"Vijayawada = 10"+", "+"Tirupati = 20"+", "+"Vishakapatnam = 20");
			request.getSession().setAttribute("locawiseInvoices", "Hyderabad = 10"+", "+"Vijayawada = 10"+", "+"Tirupati = 20"+", "+"Vishakapatnam = 20");*/
			
			response.sendRedirect("dashboard.jsp");
		}else if(user.equalsIgnoreCase("enquiry")){
			response.sendRedirect("enquiry.jsp");
		}else if(user.equalsIgnoreCase("testdrive")){
			response.sendRedirect("testdrive.jsp");
		}else if(user.equalsIgnoreCase("test")){
			response.sendRedirect("test.jsp");
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
