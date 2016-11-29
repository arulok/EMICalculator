package com.smu.devops.demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculatorServlet
 */
@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculatorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int princ = Integer.parseInt(request.getParameter("loan"));
		int term = Integer.parseInt(request.getParameter("months"));
		int interest = Integer.parseInt(request.getParameter("rate"));
		double intr = Double.parseDouble(request.getParameter("rate")) / 1200;
		
		double payment = princ * intr / (1 - (Math.pow(1/(1 + intr), term)));

		request.getSession().setAttribute("princ", princ);
		request.getSession().setAttribute("term", term);
		request.getSession().setAttribute("rate", interest);
		request.getSession().setAttribute("payment", payment);
		
		response.sendRedirect("index.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
