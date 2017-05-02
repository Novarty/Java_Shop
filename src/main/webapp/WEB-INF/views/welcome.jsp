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
<security:authorize access="hasRole('ROLE_BUYER')">
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
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
    <div class="container">
        <div class="row margin_top">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="/resources/img/img.png" alt="...">
                    <div class="caption">
                        <h3>Ярлык эскиза</h3>
                        <p>...</p>
                        <p><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#"
                                                                                           class="btn btn-default"
                                                                                           role="button">Кнопка</a></p>
                    </div>
                </div>
            </div>
        </div>
        <p><a href="/logout">Выйти</a></p>
    </div>
</security:authorize>
<security:authorize access="isAnonymous()">
    <p><a href="/sign_in">Войти</a></p>
    <p><a href="/sign_up">Зарегистрироваться</a></p>
</security:authorize>
<security:authorize access="hasRole('ROLE_ADMIN')">
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
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
    <%--Items--%>
<div class="container" style="margin-top: 75px;">
    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="/resources/img/img.png" alt="...">
                <div class="caption">
                    <h3 class="center">Наименование товара</h3>
                    <p class="center">Описание товара.</p>
                    <p class="center"><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#" class="btn btn-default"
                                                                                       role="button">Кнопка</a></p>
                </div>
            </div>
        </div>
    </div>
    <p><a href="/logout">Выйти</a></p>
    </security:authorize>
</body>
</html>
