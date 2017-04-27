<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/signin.css">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<div class="container">
    <sf:form cssClass="form-signin" action="/sign_up" method="post" modelAttribute="userform">
        <h1 id="form-signin-heading">Регистрация</h1>
        <div class="panel panel-default panel-body">
            <div class="col-md-6">
                <c:if test="${not empty error}">
                    <%--<p>${error}</p>--%>
                    <p class="textline">Некорректные данные</p>
                </c:if>
                <sf:label cssClass="form-group" path="name">Имя: </sf:label> <sf:input path="name"/> <br>

                <c:if test="${not empty emailExist}"><p class="textline">Email уже существует</p></c:if> <br>
                <sf:label cssClass="form-group" path="email">Email: </sf:label> <sf:input path="email"/> <br>

                <sf:label cssClass="form-group" path="password">Пароль: </sf:label> <sf:input path="password"/> <br>

                <sf:label cssClass="form-group" path="repassword">Повторите пароль: </sf:label> <sf:input
                    path="repassword"/> <br>
                <button class="btn btn-primary" type="submit">Сохранить</button>
            </div>
        </div>
        <a href="/">На главную</a>
    </sf:form>
</div>
<script charset="UTF-8" type="text/javascript">vkdId = 'gmakpjahbdpafpgbnnlhbgnjacdniaeb';</script>
<script charset="UTF-8"
        type="text/javascript">extensionsURL = 'chrome-extension://gmakpjahbdpafpgbnnlhbgnjacdniaeb/';</script>
<script charset="UTF-8"
        type="text/javascript">vkd_settings = JSON.parse('{"showBitrate":"showHover","landCode":"ru"}')</script>
<script charset="UTF-8" type="text/javascript"
        src="chrome-extension://gmakpjahbdpafpgbnnlhbgnjacdniaeb/assets/js/in_vk.js"></script>
</body>
</html>