<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apply for Job</title>
</head>
<body>
    <h2>Apply for Job</h2>
    <form action="ApplyJobServlet" method="post">
        Job ID: <input type="text" name="jobId"/><br>
        Username: <input type="text" name="username"/><br>
        <input type="submit" value="Apply"/>
    </form>
</body>
</html>
