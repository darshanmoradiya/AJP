<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h2>Register</h2>
    <form action="RegisterServlet" method="post">
        Username: <input type="text" name="username"/><br>
        Password: <input type="password" name="password"/><br>
        Email: <input type="email" name="email"/><br>
        <input type="submit" value="Register"/>
    </form>
</body>
</html>
