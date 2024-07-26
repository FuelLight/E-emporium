<%@page import="util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String contextPath = request.getContextPath();
%>

<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%=contextPath %>/stylesheets/admin_nav.css">
    <link rel="stylesheet" href="<%=contextPath %>/stylesheets/admin_footer.css">
    <link rel="stylesheet" href="<%=contextPath %>/stylesheets/dashboard_home.css">
    <link rel="stylesheet" href="<%=contextPath %>/stylesheets/dashboard.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    
</head>

<body>
    <header class="header">
        <div class="header-content">
            <div class="logo-container">
                <img src="https://cdn.builder.io/api/v1/image/assets/TEMP/da5bff7a7973af65c1e1eb48a5266843cadbd38a2691505d2afdb5f08a460782?apiKey=4651c95e8db04645ac2aa503a754fd27&"
                    alt="Euphorium logo" class="logo-img" />
                <span class="logo-text">euphorium</span>
            </div>
            <button class="logout-btn" onclick="window.location.href='<%=contextPath+StringUtils.SERVLET_URL_LOGOUT%>'">Logout</button>
        </div>
    </header>


    <main class="dashboard-container">
        <div class="dashboard-layout">
            <aside class="sidebar">
                <nav class="sidebar-menu">
                    <a href="dashboard_home.jsp" class="sidebar-link selected">Dashboard</a>
                    <a href="dashboard_product.jsp" class="sidebar-link">Manage Products</a>
                </nav>
            </aside>
            <div class="admin-welcome">
                <p class="admin-welcome-title">Welcome Admin!</p>

                <section class="stats-container">
                    <div class="stats-row">
                        <div class="stats-column">
                            <div class="stats-card">
                                <p class="stats-card-title">Total Products</p>
                                <p class="stats-card-value">200</p>
                            </div>
                            <div class="stats-card">
                                <p class="stats-card-title">Total Users</p>
                                <p class="stats-card-value">200</p>
                            </div>
                        </div>

                        <div class="stats-column">
                            <div class="stats-card">
                                <p class="stats-card-title">Total Users</p>
                                <p class="stats-card-value">200</p>
                            </div>

                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>

    <footer class="footer">
        <span class="copyright">
            ©2024 Mashable, Inc., a Ziff Davis company. All Rights Reserved
        </span>
    </footer>
</body>

</html>