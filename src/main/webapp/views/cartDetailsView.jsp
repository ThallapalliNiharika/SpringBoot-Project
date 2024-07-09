<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cart Details</title>
</head>
<body>
    <h1>Cart Details</h1>

    <c:if test="${not empty carts}">
        <table border="1">
            <tr>
                <th>Cart ID</th>
                <th>Customer</th>
                <th>Products</th>
            </tr>

            <c:forEach items="${carts}" var="cart">
                <tr>
                    <td>${cart.id}</td>
                    <td>${cart.customer.username}</td>
                    <td>
                        <ul>
                            <c:forEach items="${cart.products}" var="product">
                                <li>${product.name} - ${product.price}</li>
                            </c:forEach>
                        </ul>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <c:if test="${empty carts}">
        <p>No carts found.</p>
    </c:if>

    <a href="/index">Back to Index</a>
</body>
</html>
