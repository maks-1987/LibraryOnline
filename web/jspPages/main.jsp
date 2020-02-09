<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MainJSP</title>
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <h2>Hello mainJsp!!!</h2>
    <%= "Привет " %>
    <h3>
        <%= request.getParameter("username") %>
        <br> <%= "Your password: " + request.getParameter("password") %>
    </h3>
    <h2>
        ${param}
    </h2>
</body>
</html>
