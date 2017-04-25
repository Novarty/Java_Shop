<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 03.04.2017
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello, friend!</title>
</head>
<body>
<security:authorize access="hasRole('ROLE_BUYER')">
    <p><a href="/logout">Выйти</a></p>
</security:authorize>
<security:authorize access="isAnonymous()">
    <p><a href="/sign_in">Войти</a></p>
    <p><a href="/sign_up">Зарегистрироваться</a></p>
</security:authorize>

</body>
</html>
