<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Document</title>
</head>
<body class="bg-light">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/">Logout</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>
	<div class="container-fluid">


		<table class="table">

			<tr>
				<th scope="col">Serial No.</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col">Preview</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Weight</th>
				<th scope="col">Descrption</th>
				<th scope="col">Buy</th>

			</tr>
			<tbody>
			
				<tr>
					<td>
                    						52
                    					</td>
                    					<td>
                    						Black Suit
                    					</td>
                    					<td>
                    						Men

                    					</td>

                    					<td><img src="https://i.pinimg.com/736x/52/d8/5d/52d85d2cb99a1fb7a164f8ef82badf02.jpg"
                    						height="100px" width="100px"></td>
                    					<td>
                    						1
                    					</td>
                    					<td>
                    						3999
                    					</td>
                    					<td>
                    						2
                    					</td>
                    					<td>
                    						f&f brand
                    					</td>


					<td>
					


				    <a href="/buy4" class="btn btn-warning">Buy</a>
					</td>


				</tr>
						
				<tr>
					<td>
                    						55
                    					</td>
                    					<td>
                    						Dhoti
                    					</td>
                    					<td>
                    						Boys
                    					</td>

                    					<td><img src="https://ramrajcotton.in/cdn/shop/products/7_012ced7c-0fc0-4b44-b1a3-d97bbb37c8a2.jpg?v=1654846872"
                    						height="100px" width="100px"></td>
                    					<td>
                    						1
                    					</td>
                    					<td>
                    						999
                    					</td>
                    					<td>
                    						2
                    					</td>
                    					<td>
                    						f&f brand
                    					</td>


					<td>
					


				    <a href="/buy3" class="btn btn-warning">Buy</a>
					</td>


				</tr>
				
							
				<tr>
					<td>
                    						56
                    					</td>
                    					<td>
                    						Maxi Dress
                    					</td>
                    					<td>
                    						Women

                    					</td>

                    					<td><img src="https://www.jiomart.com/images/product/original/rv4eldjk94/fabflee-women-printed-georgette-a-line-maxi-dress-brown-product-images-rv4eldjk94-0-202301110438.jpg?im=Resize=(500,630)"
                    						height="100px" width="100px"></td>
                    					<td>
                    						1
                    					</td>
                    					<td>
                    						899
                    					</td>
                    					<td>
                    						2
                    					</td>
                    					<td>
                    						f&f brand
                    					</td>


					<td>
					


				    <a href="/buy2" class="btn btn-warning">Buy</a>
					</td>


				</tr>
			</tbody>
		</table>

	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>