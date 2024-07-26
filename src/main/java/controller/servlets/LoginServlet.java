package controller.servlets;

import java.io.IOException;
import controller.DatabaseController;
import controller.filters.Authentication;
import model.LoginModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.StringUtils;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { StringUtils.SERVLET_URL_LOGIN })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DatabaseController dbController = new DatabaseController();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		// Create a LoginModel object to hold user credentials
		LoginModel loginModel = new LoginModel(userName, password);

		// Call DBController to validate login credentials
		LoginModel loginResult = dbController.getuserLoginInfo(loginModel);
		System.out.println("user:"+loginResult.getUsername());
		System.out.println("pass:"+loginResult.getPassword());
		System.out.println("role:"+loginResult.getRole());

		// Check if the username and password match the credentials from the database
		if (loginResult.getUsername().equals(loginModel.getUsername())
				&& loginResult.getPassword().equals(loginModel.getPassword()) 
				&& (loginResult.getRole().equals("user")||loginResult.getRole().equals("admin"))) {
			// Login successful, return 1
			System.out.println("login successful");
			HttpSession userSession = request.getSession();
			userSession.setAttribute(StringUtils.USERNAME, userName);
			userSession.setAttribute(StringUtils.ROLE, loginResult.getRole());
			userSession.setMaxInactiveInterval(30 * 60);

			Cookie userCookie = new Cookie("user", userName);
			userCookie.setMaxAge(30 * 60);
			response.addCookie(userCookie);

			request.setAttribute(StringUtils.MESSAGE_SUCCESS, StringUtils.MESSAGE_SUCCESS_LOGIN);
			if (loginResult.getRole().equals("admin")) {
				response.sendRedirect(request.getContextPath() + StringUtils.PAGE_URL_DASHBOARD_HOME);
			} else if (loginResult.getRole().equals("user")) {
				response.sendRedirect(request.getContextPath() + StringUtils.PAGE_URL_HOME);
			}
		} else if (loginResult.getRole().equals("NF")) {
			System.out.println("No user found");
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_CREATE_ACCOUNT);
			request.getRequestDispatcher(StringUtils.PAGE_URL_LOGIN).forward(request, response);
		} else if (!(loginResult.getUsername().equals(loginModel.getUsername()))
				|| !(loginResult.getPassword().equals(loginModel.getPassword()))) {
			System.out.println("user or pass mismatch");
			// Username or password mismatch, return 0
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_LOGIN);
			request.getRequestDispatcher(StringUtils.PAGE_URL_LOGIN).forward(request, response);
		} else {
			System.out.println("server error");
			// Internal server error
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_SERVER);
			request.getRequestDispatcher(StringUtils.PAGE_URL_LOGIN).forward(request, response);
		}
	}

}
