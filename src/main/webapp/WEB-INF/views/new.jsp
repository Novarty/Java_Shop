<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/signin.css">
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 02.05.2017
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating Item</title>
</head>
<body>
<div class="container">
    <sf:form cssClass="form-signin" action="/new" method="post" modelAttribute="itemform">
        <h2 class="form-signin-heading">Создать товар</h2>
        <div class="panel panel-default panel-body">
            <c:if test="${not empty error}">
                <p class="textline">Некорректные данные</p>
            </c:if>
            <sf:input placeholder="Название" cssClass="form-control" path="itemName"/> <br>
            <sf:input placeholder="Описание" cssClass="form-control" path="description"/> <br>
            <sf:input placeholder="Город склада" cssClass="form-control" path="city"/> <br>
            <sf:input placeholder="Адрес склада" cssClass="form-control" path="address"/> <br>
            <sf:input placeholder="Количество единиц товара" cssClass="form-control" path="amount"/> <br>
            <button class="btn btn-primary" type="submit">Сохранить</button>
        </div>
        <a class="center" href="/">На главную</a>
    </sf:form>
</div>
</body>
</html>
