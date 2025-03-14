<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product Catalog</title>
</head>
<body>
    <h1>Product Catalog</h1>

    <!-- Search and Filter Form -->
    <form method="get" action="ProductServlet">
        Search: <input type="text" name="search" />
        Category: 
        <select name="category">
            <option value="">All</option>
            <option value="Electronics">Electronics</option>
            <option value="Clothing">Clothing</option>
        </select>
        <button type="submit">Filter</button>
    </form>

    <hr/>

    <!-- Product Listing -->
    <c:forEach var="product" items="${products}">
        <div>
            <h2>${product.name}</h2>
            <p>Category: ${product.category}</p>
            <p>Price: $${product.price}</p>
            <p>${product.description}</p>
        </div>
        <hr/>
    </c:forEach>

</body>
</html>