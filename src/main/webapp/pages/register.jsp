<%@page import="util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- The head section contains the meta information and the title of the page -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=contextPath%>/stylesheets/register.css">
<title>Register User</title>
</head>

<body>
	<div class="div">
		<div class="div-2">
			<div class="div-3">
				<div class="column">
					<img src="<%=contextPath%>/resource/register.jpg" class="img" />
				</div>
				<div class="column-2">
					<form class="div-4"
						action="<%=contextPath + StringUtils.SERVLET_URL_REGISTER%>"
						method="post">
						<div class="div-5">Create an Account</div>
						<div class="div-6"></div>
						<div class="div-7">
							<div class="div-8">
								<div class="column">
									<div class="div-9">
										<div class="div-10">Username</div>
										<input type="text" name="username" class="div-11" required>
										<div class="div-12">Country</div>
										<input type="text" name="address" class="div-13" required>
										<div class="div-14">Phone Number</div>
										<input type="text" name="phone" class="div-15" required>
										<div class="div-16">Password</div>
										<input type="text" name="password" class="div-17 pass"
											required>
									</div>
								</div>
								<div class="column-3">
									<div class="div-18">
										<div class="div-19">Email</div>
										<input type="text" name="email" class="div-20">
										<div class="div-21">Gender</div>
										<div class="div-22">
											<div class="div-23">
												<label for="male" class="div-24">Male</label> <input
													type="radio" name="gender" value="male" class="div-25"
													checked>
											</div>
											<div class="div-26">
												<label for="female" class="div-27">Female</label> <input
													type="radio" id="female" name="gender" value="female"
													class="div-28">
											</div>
										</div>
										<div class="div-29">Date Of Birth</div>
										<input type="date" name="dob" class="div-30" required>
										<div class="div-31">Confirm Password</div>
										<input type="text" name="retypePassword" class="div-32 pass"
											required>
									</div>
								</div>
							</div>
						</div>
						<div class="div-33">
							<button type="submit" class="div-34">Sign up</button>
							<button class="div-35" type="button"
								onclick="window.location.href='<%=contextPath%>/pages/login.jsp'">Log
								in</button>
						</div>
					</form>
					<%
					String errMsg = (String) request.getAttribute(StringUtils.MESSAGE_ERROR);
					String successMsg = (String) request.getAttribute(StringUtils.MESSAGE_SUCCESS);

					if (errMsg != null) {
						// print
					%>
					<h4 class="error-msg">
						<%
						out.println(errMsg);
						%>
					</h4>
					<%
					}

					if (successMsg != null) {
					// print
					%>
					<h4 class="success-msg">
						<%
						out.println(successMsg);
						%>
					</h4>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</div>
</body>

</html>