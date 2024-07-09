<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
          crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img th:src="@{/images/logo.png}" src="../static/images/logo.png" width="auto" height="40"
                 class="d-inline-block align-top" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/admin/loginvalidate">Home Page</a></li>
					<li class="nav-item active">
                            <a class="nav-link" sec:authorize="isAuthenticated()" href="/">Logout</a>
                        </li>

				</ul>

			</div>
    </div>
</nav>
<br>
<br>
<div class="container">
    <div class="jumbotron container border border-info">
        <h3>Update Existing Product</h3>
        <form action="/products/update/${product.id}" method="post">
            <div class="row">
                <div class="col-sm-5">
                    <div class="form-group">
                        <label for="id">Id</label>
                        <input type="number" readonly="readonly" class="form-control border border-success"
                               name="id" value="${product.id}">
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control border border-success" required name="name"
                               value="${product.name}" placeholder="Enter name">
                    </div>
                    
                    <div class="form-group">
    <label for="quantity">Category</label>
    <input type="text" class="form-control border border-success" required name="category"
        value="${product.category.name}" min="1" placeholder="category" readonly>
</div>
                    
                    
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="number" class="form-control border border-success" required name="price"
                               value="${product.price}" min="1" placeholder="Price">
                    </div>
                    <div class="form-group">
                        <label for="weight">Weight in grams</label>
                        <input type="number" class="form-control border border-success" required name="weight"
                               value="${product.weight}" min="1" placeholder="Weight">
                    </div>
                    <div class="form-group">
                        <label for="quantity">Available Quantity</label>
                        <input type="number" class="form-control border border-success" required name="quantity"
                               value="${product.quantity}" min="1" placeholder="Quantity">
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <label for="description">Product Description</label>
                        <textarea class="form-control border border-success" rows="4" name="description"
                                  placeholder="Product Details">${product.description}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="image">Product Image</label>
                        <input type="text" class="form-control border border-success" required name="image"
                               value="${product.image}" min="1" placeholder="image">
                    </div>
                    <div class="form-group">
                        <img src="${product.image}" id="imgPreview" height="100px" width="100px"
                             style="margin-top: 20px" alt="Product Image">
                    </div>
                </div>
            </div>
            <input type="hidden" name="imgName">
            <input type="submit" value="Update Details" class="btn btn-primary">
        </form>
        <a href="/admin/products" class="btn btn-secondary">Cancel</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>