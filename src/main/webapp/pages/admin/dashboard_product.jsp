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
    <link rel="stylesheet" href="<%=contextPath %>/stylesheets/dashboard_product.css">
    <link rel="stylesheet" href="<%=contextPath %>/stylesheets/dashboard.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
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
                    <a href="dashboard_home.jsp" class="sidebar-link">Dashboard</a>
                    <a href="dashboard_product.jsp" class="sidebar-link selected">Manage Products</a>
                </nav>
            </aside>
            <div class="main-content">
                <div class="content-header">
                    <h1 class="content-title">Choose an Option</h1>
                    <div class="action-buttons">
                        <button class="add-product-btn">
                            <span class="add-product-text">Add Product</span>
                            <img src="https://cdn.builder.io/api/v1/image/assets/TEMP/08da525681686a99aebd31892189435a676e67fef0036910dc797481640175de?apiKey=4651c95e8db04645ac2aa503a754fd27&"
                                alt="" class="add-product-icon" />
                        </button>
                        <button class="remove-product-btn">
                            <span class="remove-product-text">Remove Product</span>
                            <img src="https://cdn.builder.io/api/v1/image/assets/TEMP/cb789b61b005b5df954633bb6dfcce27338e298f27d34e43438fdb70ce1637d8?apiKey=4651c95e8db04645ac2aa503a754fd27&"
                                alt="" class="remove-product-icon" />
                        </button>
                    </div>
                </div>
                <div class="product-list">
                    <h2 class="product-list-title">List of Products</h2>
                    <div class="actual-list">
                        <div class="product-item">
                            <div class="product-number">1</div>
                            <h3 class="product-name">Lenovo Chromebook Due</h3>
                        </div>
                        <div class="product-item">
                            <div class="product-number">2</div>
                            <h3 class="product-name">Dell Inspiron 15 3000 Laptop</h3>
                        </div>
                        <div class="product-item">
                            <div class="product-number">3</div>
                            <h3 class="product-name">Samsung Galaxy S23 Ultra – The phone with everything</h3>
                        </div>
                        <div class="product-item">
                            <div class="product-number">4</div>
                            <h3 class="product-name">Motorola Razr 40 Ultra/Razr+ – Best foldable phone</h3>
                        </div>
                        <div class="product-item">
                            <div class="product-number">5</div>
                            <h3 class="product-name">Google Pixel 8 Pro – Best phone for most people</h3>
                        </div>
                        <div class="product-item">
                            <div class="product-number">6</div>
                            <h3 class="product-name">Garmin Venu 2 Plus Best fitness watch</h3>
                        </div>
                    </div>
                </div>
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