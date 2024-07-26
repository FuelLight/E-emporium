package util;

public class StringUtils {

	// Start: DB Connection
	public static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
	public static final String LOCALHOST_URL = "jdbc:mysql://localhost:3306/emporium";
	public static final String LOCALHOST_USERNAME = "root";
	public static final String LOCALHOST_PASSWORD = "root";

	// Start: Queries
	public static final String QUERY_REGISTER_USER="INSERT INTO `user` (`email`, `gender`, `address`, `phone`, `dob`, `username`, `passhash`, `role`) VALUES (?,?,?,?,?,?,?,'user');";
	public static final String QUERY_CHECK_EMAIL="SELECT * FROM `user` WHERE email=?;";
	public static final String QUERY_CHECK_PHONE="SELECT * FROM `user` WHERE phone=?;";
	public static final String QUERY_CHECK_USER="SELECT * FROM `user` WHERE username=?;";

	// End: Queries

	// Start: Parameter names
	public static final String USERNAME = "username";
	public static final String BIRTHDAY = "dob";
	public static final String GENDER = "gender";
	public static final String EMAIL = "email";
	public static final String PHONE= "phone";
	public static final String ADDRESS = "address";
	public static final String PASSWORD = "password";
	public static final String PASSHASH="passhash";
	public static final String ROLE="role";
	public static final String RETYPE_PASSWORD = "retypePassword";
	// End: Parameter names


	public static final String GET_ALL_STUDENT_INFO = "SELECT * from student_info";
	public static final String GET_LOGIN_STUDENT_INFO = "SELECT * from student_info WHERE user_name = ? AND password = ?";

	// Register Page Messages
	public static final String MESSAGE_SUCCESS_REGISTER = "Successfully Registered!";
	public static final String MESSAGE_ERROR_REGISTER = "Please re-check the form data.";
	public static final String MESSAGE_ERROR_INCORRECT_DATA = "Please correct the form data.";
	public static final String MESSAGE_ERROR_USERNAME = "Username is already registered.";
	public static final String MESSAGE_ERROR_EMAIL = "Email is already registered.";
	public static final String MESSAGE_ERROR_PHONE = "Phone number is already registered.";
	public static final String MESSAGE_ERROR_PASSWORD_UNMATCHED = "Password is not matched.";

	// Login Page Messages
	public static final String MESSAGE_SUCCESS_LOGIN = "Successfully LoggedIn!";
	public static final String MESSAGE_ERROR_LOGIN = "Either username or password is not correct!";
	public static final String MESSAGE_ERROR_CREATE_ACCOUNT = "Account for this username is not registered! Please create a new account.";

	// Other Messages
	public static final String MESSAGE_ERROR_SERVER = "An unexpected server error occurred.";
	public static final String MESSAGE_SUCCESS_DELETE = "Successfully Deleted!";
	public static final String MESSAGE_ERROR_DELETE = "Cannot delete the user!";

	public static final String MESSAGE_SUCCESS = "successMessage";
	public static final String MESSAGE_ERROR = "errorMessage";
	// End: Validation Messages

	// Start: JSP Route
	public static final String PAGE_URL_LOGIN = "/pages/login.jsp";
	public static final String PAGE_URL_REGISTER = "/pages/register.jsp";
	public static final String PAGE_URL_DASHBOARD_HOME = "/pages/admin/dashboard_home.jsp";
	public static final String PAGE_URL_DASHBOARD_PRODUCT = "/pages/admin/dashboard_product.jsp";
	public static final String PAGE_URL_HOME = "/pages/user/user_home.jsp";
	public static final String PAGE_URL_FOOTER = "pages/footer.jsp";
	public static final String PAGE_URL_HEADER = "pages/header.jsp";
	public static final String URL_DASHBOARD_HOME = "/admin/dashboard_home.jsp";
	public static final String URL_DASHBOARD_PRODUCT = "/admin/dashboard_product.jsp";
	public static final String URL_HOME = "/user/user_home.jsp";
	public static final String URL_LOGIN = "/login.jsp";
	public static final String URL_INDEX = "/index.jsp";
	public static final String URL_REGISTER = "/register.jsp";
	// End: JSP Route

	// Start: Servlet Route
	public static final String SERVLET_URL_LOGIN = "/login";
	public static final String SERVLET_URL_REGISTER = "/register";
	public static final String SERVLET_URL_LOGOUT = "/logout";
	// End: Servlet Route

	// Start: Normal Text
	public static final String USER = "user";
	public static final String JSESSIONID = "JSESSIONID";
	public static final String LOGIN = "Login";
	public static final String LOGOUT = "Logout";
	// End: Normal Text
}
