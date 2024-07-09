<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion & Fusion</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
          crossorigin="anonymous">

    <style>
        .custom-header {
            background-color: #007BFF;
            color: white;
            font-size: 18px;
        }

        .card-img-top {
            max-height: 250px;
            object-fit: contain;
        }

        h4,h5,p {
            color: black;
        }

        span.username {
            color: black;
        }

        body {
            background-image: radial-gradient(circle, #728276, #7f8572, #8f8670, #9f8675, #ac8681, #b08a92, #ae91a4, #a799b3, #9fa5bd, #9cb0c0, #a1b9c0, #adc0bf);
            color: white;
            font-family: Arial, sans-serif;
        }

        nav {
            background-image: radial-gradient(circle, #728276, #7f8572, #8f8670, #9f8675, #ac8681, #b08a92, #ae91a4, #a799b3, #9fa5bd, #9cb0c0, #a1b9c0, #adc0bf);
        }

        footer {
            background-color: transparent;
        }

        .input-group {
            justify-content: flex-end;
            margin-top: 20px;
        }

        .highlighted-text {
            background-color: yellow;
            font-weight: bold;
        }
    </style>

    
</head>
<body class="bg-light">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light custom-header">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img th:src="@{/images/logo.png}" src="../static/images/logo.png" width="auto" height="40" class="d-inline-block align-top" alt=""/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <h4>Welcome <span style="color: black;">${user}</span></h4>
                    <ul class="navbar-nav mr-auto"></ul>
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="/uproduct">Cart</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="/profiles">Profile</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" sec:authorize="isAuthenticated()" href="/">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="container">
            <h1><center>Fashion & Fusion</center></h1>
            
          

           <div class="row">
   <c:forEach var="product" items="${products}">
    <div class="col-md-3">
        <div class="card mb-4">
        <form action="addtocart" method="post">
            <img class="card-img-top" src="${product.image}" alt="Product 1">
            <div class="card-body">
                <b><h4 class="card-title">${product.name}</h4></b>
                <h5 class="card-text">Category: ${product.category.name}</h5>
                <h5 class="card-text">Price: ${product.price}</h5>
                <p class="card-text">Description: ${product.description}</p>
                  <input type="hidden" name="customer_id" value="${customer_id}">
    <input type="hidden" name="product_id" value="${product_id}">
                </form>
                <a href="/cart" class="btn btn-warning">Add To Cart</a>
            </div>
        </div>
    </div>
</c:forEach>
</div>
           
    </main>
    <footer>
        <div class="container">
            <p>&copy; 2023 Fashion & Fusion Shop. All rights reserved</p>
        </div>
    </footer>
</body>
</html>