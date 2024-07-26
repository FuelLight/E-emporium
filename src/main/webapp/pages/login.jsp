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
<link rel="stylesheet" href="<%=contextPath%>/stylesheets/login.css">
<title>Login</title>
</head>

<body>
	<div class="div">
		<div class="div-2">
			<div class="div-3">
				<div class="column">
					<div class="div-4">
						<form action="<%=contextPath + StringUtils.SERVLET_URL_LOGIN%>" method="post">
							<div class="div-5">Login</div>
							<div class="div-6">Username</div>
							<input class="div-7" type="text" name="username" required />
							<div class="div-8">Password</div>
							<input class="div-9" type="text" name="password" required />
							<div class="div-10">
								<button type="submit" class="div-11">Log in</button>
								<button class="div-12" type="button"
									onclick="window.location.href='<%=contextPath%>/pages/register.jsp'">Sign
									Up</button>
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
				<div class="column-2">
					<img src="<%=contextPath %>/resource/login.jpg" class="img" />
				</div>
			</div>
		</div>
	</div>
</body>

</html>
