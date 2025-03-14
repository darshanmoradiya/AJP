<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post a Job</title>
</head>
<body>
    <h2>Post a Job</h2>
    <form action="AddJobServlet" method="post">
        Title: <input type="text" name="title"/><br>
        Description: <textarea name="description"></textarea><br>
        Company: <input type="text" name="company"/><br>
        <input type="submit" value="Post Job"/>
    </form>
</body>
</html>
