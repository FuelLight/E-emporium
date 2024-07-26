package controller.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;
import model.UserModel;
import util.StringUtils;
import util.ValidationUtil;

/**
 * Servlet implementation class MyFirstServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { StringUtils.SERVLET_URL_REGISTER })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DatabaseController dbController = new DatabaseController();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter(StringUtils.USERNAME);
		String dobString = request.getParameter(StringUtils.BIRTHDAY);
		LocalDate dob = LocalDate.parse(dobString);
		String gender = request.getParameter(StringUtils.GENDER);
		String email = request.getParameter(StringUtils.EMAIL);
		String phoneNumber = request.getParameter(StringUtils.PHONE);
		String address = request.getParameter(StringUtils.ADDRESS);
		String password = request.getParameter(StringUtils.PASSWORD);
		String repassword = request.getParameter(StringUtils.RETYPE_PASSWORD);

		//validation
		if (!ValidationUtil.isAlphanumeric(userName) || !ValidationUtil.isEmail(email)
				|| !ValidationUtil.isNumbersOnly(phoneNumber) || !ValidationUtil.isGenderMatches(gender)) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_INCORRECT_DATA);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		} else if (!(password.equals(repassword))) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_PASSWORD_UNMATCHED);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		} else if (dbController.checkEmailIfExists(email)) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_EMAIL);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		} else if (dbController.checkNumberIfExists(phoneNumber)) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_PHONE);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		} else if (dbController.checkUsernameIfExists(userName)) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_USERNAME);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		}

		UserModel user = new UserModel(dob, gender, email, phoneNumber, address, userName, password);
		int result = dbController.registeruser(user);

		if (result == 1) {
			request.setAttribute(StringUtils.MESSAGE_SUCCESS, StringUtils.MESSAGE_SUCCESS_REGISTER);
			response.sendRedirect(request.getContextPath() + StringUtils.PAGE_URL_LOGIN);
		} else if (result == 0) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_REGISTER);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		} else {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_SERVER);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		}
	}

}
