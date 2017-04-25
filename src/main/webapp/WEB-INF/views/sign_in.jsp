<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/style.css">
<link rel="stylesheet" href="/resources/signin.css">
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="container">
    <form class="form-signin" role="form" action="/sign_in/process" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <c:if test="${not empty error}">
            <p class="textline">Неправильные данные</p>
        </c:if>
        <input type="email" class="form-control" placeholder="Email address" name="email" required autofocus>
        <input type="password" class="form-control" placeholder="Password" name="password" required>
        <%--<label class="checkbox">--%>
            <%--<input type="checkbox" value="remember-me"> Remember me--%>
        <%--</label>--%>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
    <a href="/sign_up">Нет учетной записи?</a>
</div> <!-- /container -->

<%--<script charset="UTF-8" type="text/javascript">vkdId ='gmakpjahbdpafpgbnnlhbgnjacdniaeb';</script>--%>
<%--<script charset="UTF-8" type="text/javascript">extensionsURL = 'chrome-extension://gmakpjahbdpafpgbnnlhbgnjacdniaeb/';</script>--%>
<%--<script charset="UTF-8" type="text/javascript">vkd_settings =JSON.parse('{"showBitrate":"showHover","landCode":"ru"}')</script>--%>
<%--<script charset="UTF-8" type="text/javascript" src="chrome-extension://gmakpjahbdpafpgbnnlhbgnjacdniaeb/assets/js/in_vk.js"></script>--%>
</body>
</html>