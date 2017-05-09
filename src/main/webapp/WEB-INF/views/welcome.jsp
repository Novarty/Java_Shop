<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 03.04.2017
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://meyerweb.com/eric/tools/css/reset/reset.css">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">

<html>
<head>
    <title>Hello, friend!</title>
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
                <security:authorize access="hasRole('ROLE_BUYER')">
                    <li><a href="/basket">Корзина</a></li>
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

<div class="container" style="margin-top: 75px;"><%--Items--%>
    <div class="row">
        <c:if test="${params != null}">  <%--Вывод результата поиска--%>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="/resources/img/img.png" alt="...">
                        <div class="caption">
                            <p class="center lead">${params.itemName}</p>
                            <c:if test="${params.amount == 0}">
                                <h4 class="center text-info">Товара нет в наличии</h4>
                                <p class="center"><a href="#" class="btn btn-primary disabled" role="button">В корзину</a> <a
                                        href="/show?id=${item.id}" class="btn btn-default"
                                        role="button">Подробнее</a>
                                    <security:authorize access="hasRole('ROLE_ADMIN')">
                                        <a href="/edit?id=${item.id}" class="btn btn-info" role="button">Изменить</a>
                                    </security:authorize>
                                </p>
                            </c:if>
                            <c:if test="${params.amount != 0}">
                                <p class="center">На складе: ${params.amount}шт.</p>
                                <p class="center"><a href="#" class="btn btn-primary" role="button">В корзину</a> <a
                                        href="/show?id=${params.id}" class="btn btn-default"
                                        role="button">Подробнее</a>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
                                    <a href="/edit?id=${item.id}" class="btn btn-info" role="button">Изменить</a>
                                </security:authorize>
                                </p>
                            </c:if>
                        </div>
                    </div>
                </div>
            <%--Конец вывода результата поиска--%>
        </c:if>
        <c:forEach items="${items}" var="item">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="/resources/img/img.png" alt="...">
                    <div class="caption">
                        <p class="center lead">${item.itemName}</p>
                        <c:if test="${item.amount == 0}">
                            <h4 class="center text-info">Товара нет в наличии</h4>
                            <p class="center"><a href="#" class="btn btn-primary disabled" role="button">В корзину</a> <a
                                    href="/show?id=${item.id}" class="btn btn-default"
                                    role="button">Подробнее</a>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
                                    <a href="/edit?id=${item.id}" class="btn btn-info" role="button">Изменить</a>
                                </security:authorize>
                            </p>
                        </c:if>
                        <c:if test="${item.amount != 0}">
                            <p class="center">На складе: ${item.amount}шт.</p>
                            <p class="center"><a href="#" class="btn btn-primary" role="button">В корзину</a> <a
                                    href="/show?id=${item.id}" class="btn btn-default"
                                    role="button">Подробнее</a>
                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="/edit?id=${item.id}" class="btn btn-info" role="button">Изменить</a>
                            </security:authorize>
                            </p>
                        </c:if>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<%--Items end--%>
</body>
</html>
