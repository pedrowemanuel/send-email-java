package br.edu.ifce.servlets;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.mail.EmailException;

import br.edu.ifce.beans.Mail;
import br.edu.ifce.mail.CommonsMail;

/**
 * Servlet implementation class SendMail
 */
public class PrivateHttpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PrivateHttpServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = (String) request.getSession().getAttribute("user");

		if (user == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("formlogin.jsp");
			dispatcher.forward(request, response);

		}
		
		doGet(request, response);

	}
	


	

}
