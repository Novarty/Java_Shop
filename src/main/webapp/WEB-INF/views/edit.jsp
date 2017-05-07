<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 04.05.2017
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/signin.css">
<html>
<head>
    <title>Редактирование</title>
</head>
<body>
<%--HEADER--%>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Java_Shop</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Главная</a></li>
                <li><a href="/all_users">Пользователи</a></li>
                <li><a href="/new">Добавить товар</a></li>
                <li><a href="/logout">Выйти</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="/">
                <input type="text" name="params" class="form-control" placeholder="Поиск по названию...">
            </form>
        </div><!--/.nav-collapse -->
    </div>
</div>
<%--HEADER end--%>
<div class="container" style="margin-top: 75px">
    <sf:form cssClass="form-signin" action="/edit?id=${item.id}" method="post" modelAttribute="itemform">
        <h2 class="form-signin-heading">Изменить товар</h2>
        <div class="panel panel-default panel-body">
            <sf:errors path="itemName"/>
            <sf:input placeholder="Название" cssClass="form-control" path="itemName"/> <br>
            <sf:errors path="description"/>
            <sf:input placeholder="Описание" cssClass="form-control" path="description"/> <br>
            <sf:errors path="city"/>
            <sf:input placeholder="Город склада" cssClass="form-control" path="city"/> <br>
            <sf:errors path="address"/>
            <sf:input placeholder="Адрес склада" cssClass="form-control" path="address"/> <br>
            <sf:errors path="amount"/>
            <sf:input placeholder="Количество единиц товара" cssClass="form-control" path="amount"/> <br>
            <button class="btn btn-primary" type="submit">Сохранить</button>
        </div>
        <a class="center" href="/">На главную</a>
    </sf:form>
</div>
</body>
</html>
