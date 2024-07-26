package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import model.LoginModel;
import model.PasswordEncryptionWithAes;
import model.UserModel;
import util.StringUtils;

public class DatabaseController {
	public Connection getConnection() throws SQLException, ClassNotFoundException {

		// Load the JDBC driver class specified by the StringUtils.DRIVER_NAME constant
		Class.forName(StringUtils.DRIVER_NAME);

		// Create a connection to the database using the provided credentials
		return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USERNAME,
				StringUtils.LOCALHOST_PASSWORD);
	}

	public int registeruser(UserModel user) {

		try {
			// Prepare a statement using the predefined query for student registration
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_REGISTER_USER);

			// Set the student information in the prepared statement
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getGender());
			stmt.setString(3, user.getAddress());
			stmt.setString(4, user.getphone());
			stmt.setDate(5, Date.valueOf(user.getDob()));
			stmt.setString(6, user.getUsername());
			stmt.setString(7, PasswordEncryptionWithAes.encrypt(user.getUsername(), user.getPassword()));
			stmt.setString(8, "user");

			// Execute the update statement and store the number of affected rows
			int result = stmt.executeUpdate();

			// Check if the update was successful (i.e., at least one row affected)
			if (result > 0) {
				return 1; // Registration successful
			} else {
				return 0; // Registration failed (no rows affected)
			}

		} catch (ClassNotFoundException | SQLException ex) {
			// Print the stack trace for debugging purposes
			ex.printStackTrace();
			return -1; // Internal error
		}
	}

	public LoginModel getuserLoginInfo(LoginModel loginModel) {
		// Try-catch block to handle potential SQL or ClassNotFound exceptions
		try {
			// Prepare a statement using the predefined query for login check
			PreparedStatement st = getConnection().prepareStatement(StringUtils.QUERY_CHECK_USER);

			// Set the username in the first parameter of the prepared statement
			st.setString(1, loginModel.getUsername());

			// Execute the query and store the result set
			ResultSet result = st.executeQuery();

			// Check if there's a record returned from the query
			if (result.next()) {
				// Get the username from the database
				String userDb = result.getString(StringUtils.USERNAME);

				// Get the password from the database
				String encryptedPwd = result.getString(StringUtils.PASSHASH);

				String decryptedPwd = PasswordEncryptionWithAes.decrypt(encryptedPwd, userDb);

				String role = result.getString(StringUtils.ROLE);

				LoginModel loginResult = new LoginModel(userDb, decryptedPwd, role);
				return loginResult;

			} else {
				// Username not found in the database, return -1
				loginModel.setRole("NF");
				return loginModel;
			}

			// Catch SQLException and ClassNotFoundException if they occur
		} catch (SQLException | ClassNotFoundException ex) {
			// Print the stack trace for debugging purposes
			ex.printStackTrace();
			// Return -2 to indicate an internal error
			loginModel.setRole("");
			return loginModel;

		}
	}

	public Boolean checkEmailIfExists(String email) {
		try {
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_CHECK_EMAIL);
			stmt.setString(1, email);
			ResultSet result = stmt.executeQuery();
			if (result.next()) {
				return true;
			}
			else {
				return false;
			}
			} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return true;
		}
	}

	public Boolean checkNumberIfExists(String number) {
		try {
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_CHECK_PHONE);
			stmt.setString(1, number);
			ResultSet result = stmt.executeQuery();
			if (result.next()) {
				return true;
			}
			else {
				return false;
			}
			} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return true;
		}
	}

	public Boolean checkUsernameIfExists(String username) {
		try {
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_CHECK_USER);
			stmt.setString(1, username);
			ResultSet result = stmt.executeQuery();
			if (result.next()) {
				return true;
			}
			else {
				return false;
			}
			} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return true;
		}
	}
}