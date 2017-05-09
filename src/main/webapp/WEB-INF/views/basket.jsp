<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 09.05.2017
  Time: 01:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://meyerweb.com/eric/tools/css/reset/reset.css">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<html>
<head>
    <title>Корзина</title>
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
                <li><a href="/">Главная</a></li>
                <security:authorize access="hasRole('ROLE_BUYER')">
                    <li class="active"><a href="/basket">Корзина</a></li>
                    <li><a href="#">Мои заказы</a></li>
                    <li><a href="/logout">Выйти</a></li>
                </security:authorize>
                <security:authorize access="isAnonymous()">
                    <li><a href="/sign_in">Войти</a></li>
                </security:authorize>
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <li><a href="/all_users">Пользователи</a></li>
                    <li><a href="/new">Добавить товар</a></li>
                    <li><a href="/logout">Выйти</a></li>
                </security:authorize>
            </ul>
            <form class="navbar-form navbar-right" action="/">
                <input type="text" name="params" class="form-control" placeholder="Поиск по названию...">
            </form>
        </div><!--/.nav-collapse -->
    </div>
</div>
<%--HEADER end--%>
<div class="container" style="margin-top: 75px;"><%--Items in Order--%>
    <div class="row">
        <div class="col-md-6">
            <h1>Товары в корзине</h1>
            <%--<c:forEach items="${items}" var="item">--%>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Название панели</h3>
                    </div>
                    <div class="panel-body">
                        Panel content
                    </div>
                </div>
            <%--</c:forEach>--%>
        </div>
    </div>
</div>
</body>
</html>
