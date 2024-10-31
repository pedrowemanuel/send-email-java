package br.edu.ifce.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.beans.User;
import br.edu.ifce.utils.BeanUtilities;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String userNameAdmin = "admin";
	private static final String passwordAdmin = "123";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		BeanUtilities.populateBean(user, request);
		

		String userName = user.getUserName();
		String password = user.getPassword();


		if (userName.equals(userNameAdmin) && password.equals(passwordAdmin)) {
			request.getSession().setAttribute("user", userName);
			response.sendRedirect("email.jsp");
		} else

		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("formlogin.jsp");

			dispatcher.forward(request, response);

		}

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("formlogin.jsp");

		dispatcher.forward(request, response);

	}

}
