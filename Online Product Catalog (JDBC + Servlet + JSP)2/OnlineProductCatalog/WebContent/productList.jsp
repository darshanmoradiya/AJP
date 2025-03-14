
<%@ page contentType="text/html" %>
<%@ page import="java.util.*, model.Product" %>
<html>
<head><title>Product List</title></head>
<body>
    <h2>Product List</h2>
    <table border="1">
        <tr><th>ID</th><th>Name</th><th>Price</th></tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
            