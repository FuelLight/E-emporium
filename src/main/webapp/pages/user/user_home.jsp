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
<link rel="stylesheet" href="../../stylesheets/nav.css">
<link rel="stylesheet" href="../../stylesheets/footer.css">
<link rel="stylesheet" href="../../stylesheets/user_home.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<script src="<%=contextPath%>/script/script.js"></script>
</head>

<body>
	<header class="nav">
		<div class="container">
			<a href="#" class="logo"> <img
				src="../../resource/Logo Emporium.png" alt="Logo"> <span
				class="logotxt">Emporium</span>
			</a>

			<div class="navdiv">
				<div class="navigation">
					<a href="#">Home</a> <a href="#">Shop</a> <a href="#">Categories</a>
					<a class="about" href="#">About</a>
				</div>
			</div>

			<div class="rhs">
				<div class="search">
					<img src="../../resource/211818_search_icon 1.svg" alt="Search bar">
					<input type="text" name="search">
				</div>

				<div class="icons">
					<button id="dropdown-btn" onclick="ddc()">
						<img
							src="../../resource/8324223_ui_essential_app_avatar_profile_icon.svg"
							alt="User Profile" width="25px">
					</button>
					<div class="dropdown-content" id="myDropdown">
						<a href="<%=contextPath + StringUtils.SERVLET_URL_LOGOUT%>" method="post">Logout</a>
					</div>


					<a href="#"> <img
						src="../../resource/9025885_shopping_cart_icon.svg"
						alt="Add to cart" width="25px">
					</a>
				</div>
			</div>
		</div>
	</header>

	<section class="hero-section">
		<div class="hero-content">
			<div class="hero-text-container">
				<h1 class="hero-title">
					XPS 15 INCH 9570 <br /> HIGH PERFORMANCE
				</h1>
				<p class="hero-subtitle">Now Available On E-emporium</p>
				<a href="#" class="hero-cta">Shop Now</a>
			</div>
			<div class="hero-image-container">
				<img
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/a5fad34daa80706a511ffae5472d4d53109df327ae79529ee0a037a786074781?apiKey=4651c95e8db04645ac2aa503a754fd27&"
					alt="XPS 15 inch 9570 laptop" class="hero-image" />
			</div>
		</div>
	</section>

	<section class="fps">
		<div class="featured-products-section">
			<h2 class="section-title">Featured Products</h2>
			<div class="featured-products-icons">
				<img
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/6d46c131187bfff9eb633481579a064341b51d7196040ee40dd3f9577e445a5e?apiKey=4651c95e8db04645ac2aa503a754fd27&"
					alt="" class="featured-product-icon" /> <img
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/e88e31fcac886e936832d43b7fb2b7a3e219274da66d8e9d07a08a6cc7094c1b?apiKey=4651c95e8db04645ac2aa503a754fd27&"
					alt="" class="featured-product-icon" />
			</div>
		</div>

		<div class="product-grid">
			<div class="product-card">
				<div class="product-image-container">
					<img
						src="https://cdn.builder.io/api/v1/image/assets/TEMP/e93ad05ae04f0b54f4159cbcf6911a27cb651cbe215adedef39517dbfe9650fd?apiKey=4651c95e8db04645ac2aa503a754fd27&"
						alt="HAVIT HV-G92 Gamepad" class="product-image" />
					<button class="add-to-cart-button">Add To Cart</button>
				</div>
				<h3 class="product-name">HAVIT HV-G92 Gamepad</h3>
				<p class="product-price">$120</p>
			</div>

			<div class="product-card">
				<div class="product-image-container">
					<img
						src="https://cdn.builder.io/api/v1/image/assets/TEMP/e93ad05ae04f0b54f4159cbcf6911a27cb651cbe215adedef39517dbfe9650fd?apiKey=4651c95e8db04645ac2aa503a754fd27&"
						alt="AK-900 Wired Keyboard" class="product-image" />
					<button class="add-to-cart-button">Add To Cart</button>
				</div>
				<h3 class="product-name">AK-900 Wired Keyboard</h3>
				<p class="product-price">$120</p>
			</div>

			<div class="product-card">
				<div class="product-image-container">
					<img
						src="https://cdn.builder.io/api/v1/image/assets/TEMP/e93ad05ae04f0b54f4159cbcf6911a27cb651cbe215adedef39517dbfe9650fd?apiKey=4651c95e8db04645ac2aa503a754fd27&"
						alt="IPS LCD Gaming Monitor" class="product-image" />
					<button class="add-to-cart-button">Add To Cart</button>
				</div>
				<h3 class="product-name">IPS LCD Gaming Monitor</h3>
				<p class="product-price">$120</p>
			</div>

			<div class="product-card">
				<div class="product-image-container">
					<img
						src="https://cdn.builder.io/api/v1/image/assets/TEMP/e93ad05ae04f0b54f4159cbcf6911a27cb651cbe215adedef39517dbfe9650fd?apiKey=4651c95e8db04645ac2aa503a754fd27&"
						alt="Super-Speaker" class="product-image" />
					<button class="add-to-cart-button">Add To Cart</button>
				</div>
				<h3 class="product-name">Super-Speaker</h3>
				<p class="product-price">$120</p>
			</div>
		</div>
	</section>

	<section class="features-section">
		<div class="features-grid">
			<div class="feature-card">
				<img
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/4440e1051108444f00843fb81e38ce74b99cdfdb19769964410a676a08d5a219?apiKey=4651c95e8db04645ac2aa503a754fd27&"
					alt="" class="feature-icon" />
				<h3 class="feature-title">FREE AND FAST DELIVERY</h3>
				<p class="feature-description">Free delivery for all orders over
					$140</p>
			</div>

			<div class="feature-card">
				<img
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/6b20eb81c57e57e7eb0d3c313de826a3012c01a3043aecab5bff038677301f62?apiKey=4651c95e8db04645ac2aa503a754fd27&"
					alt="" class="feature-icon" />
				<h3 class="feature-title">24/7 CUSTOMER SERVICE</h3>
				<p class="feature-description">Friendly 24/7 customer support</p>
			</div>

			<div class="feature-card">
				<img
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/b68d43ca0c13db84ad508ae0fcbd1affe6ec1fac4283eeaf6cf4466f36682906?apiKey=4651c95e8db04645ac2aa503a754fd27&"
					alt="" class="feature-icon" />
				<h3 class="feature-title">MONEY BACK GUARANTEE</h3>
				<p class="feature-description">We return money within 30 days</p>
			</div>
		</div>
	</section>

	<section class="product-showcase">
		<div class="product-container">
			<div class="product-layout">
				<div class="product-info">
					<div class="product-details">
						<p class="product-label">Today's Product</p>
						<h2 class="product-title">Enhance Your Music Experience</h2>
						<div class="countdown">
							<div class="countdown-item">
								<div class="countdown-value">Hours</div>
							</div>
							<div class="countdown-item">
								<div class="countdown-value">Days</div>
							</div>
							<div class="countdown-item">
								<div class="countdown-value">Minutes</div>
							</div>
							<div class="countdown-item">
								<div class="countdown-value">Seconds</div>
							</div>
						</div>
						<button class="buy-button">Buy Now!</button>
					</div>
				</div>
				<div class="product-media">
					<div class="product-media-inner">
						<img
							src="https://cdn.builder.io/api/v1/image/assets/TEMP/548d5d7fa4e4b89804c39714bac0820798d5a801ca3a5fb7a73fde2fe5af5dd7?apiKey=4651c95e8db04645ac2aa503a754fd27&"
							alt="Product Image" class="product-image-tp" />
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">
		<div class="footer-content">
			<div class="footer-columns">
				<div class="footer-column">
					<div class="footer-logo-container">
						<div class="footer-logo">
							<img
								src="https://cdn.builder.io/api/v1/image/assets/TEMP/4582ac175ce10cb27d39c937ff8efc74560ae51f32d9f24a163b5ad3ed3889be?apiKey=4651c95e8db04645ac2aa503a754fd27&"
								alt="Euphorium logo" class="footer-logo-img" />
							<div class="footer-logo-text">euphorium</div>
						</div>
						<div class="footer-social-icons">
							<a href="#"><img
								src="https://cdn.builder.io/api/v1/image/assets/TEMP/bdf6fb1d49ab9a6a708e8f29c13af51edb7068a5c1b9069aa80bc4c1f68d4a8d?apiKey=4651c95e8db04645ac2aa503a754fd27&"
								alt="Facebook icon" class="footer-social-icon" /></a> <a href="#"><img
								src="https://cdn.builder.io/api/v1/image/assets/TEMP/66f64887a0a923478b8ff92054f620e47f1cacf6158635bde13089b5fdafeae9?apiKey=4651c95e8db04645ac2aa503a754fd27&"
								alt="Twitter icon" class="footer-social-icon" /></a> <a href="#"><img
								src="https://cdn.builder.io/api/v1/image/assets/TEMP/b14a0e7048641e799d646f4d8bd98e15ccc718dfba91c05f80a9724f2b939097?apiKey=4651c95e8db04645ac2aa503a754fd27&"
								alt="Instagram icon" class="footer-social-icon" /></a>
						</div>
					</div>
				</div>
				<div class="footer-column">
					<div class="footer-contact">
						<div class="footer-contact-title">CONTACT US</div>
						<div class="footer-contact-email">emporium@gmail.com</div>
						<div class="footer-contact-address">Kathmandu, Nepal</div>
						<div class="footer-contact-phone">+01 5236123</div>
					</div>
				</div>
				<div class="footer-column">
					<div class="footer-newsletter">
						<div class="footer-newsletter-title">Latest E-emporium</div>
						<div class="footer-newsletter-description">Be the first to
							know about exciting new accessories, special discounts, store
							openings and much more.</div>
						<form class="footer-newsletter-form">
							<label for="newsletter-email" class="visually-hidden">Email</label>
							<input type="email" id="newsletter-email" placeholder="Email"
								class="footer-newsletter-input" />
							<button type="submit" class="footer-newsletter-submit">
								<img
									src="https://cdn.builder.io/api/v1/image/assets/TEMP/3b39eeaca9f17573d69e5fe23e2aeaea428e211dff3b95c85a331f372e8ab219?apiKey=4651c95e8db04645ac2aa503a754fd27&"
									alt="Submit" />
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>

</html>