<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 27.04.2017
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--<%@ page isELIgnored="false" %>--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Список пользователей</title>
    <link rel="stylesheet" href="http://meyerweb.com/eric/tools/css/reset/reset.css">
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
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
<div class="container" style="margin-top: 75px;"><%--Таблица пользователей--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-1">
            <h1>Список пользователей</h1>
            <table class="table table-bordered table-hover white">
                <thead>
                <tr>
                    <th class="bold">Email</th>
                    <th class="bold">Имя пользователя</th>
                    <th class="bold">Роль</th>
                    <th class="bold">Статус активности</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <c:forEach items="${users}" var="user">
                    <tbody>
                    <tr>
                        <sf:form action="/all_users" method="post" modelAttribute="userform">
                            <td><c:out value="${user.email}"/></td>
                            <td><c:out value="${user.name}"/></td>
                            <td><c:out value="${user.role}"/></td>
                            <td><c:if test="${user.is_confirm == true}">подтвержден</c:if>
                                <c:if test="${user.is_confirm != true}">не подтвержден</c:if></td>
                            <td><sf:select path="is_confirm">
                                <sf:option value="true">подтвердить</sf:option>
                                <sf:option value="false">отменить подтверждение</sf:option>
                            </sf:select></td>
                            <td>
                                <sf:button value="${user.id}" name="id"
                                           class="btn btn-success">Изменить</sf:button>
                            </td>
                        </sf:form>
                        <form action="/all_users" method="post">
                            <td>
                                <button type="submit" value="${user.id}" name="id"
                                           class="btn btn-danger">Удалить</button>
                            </td>
                        </form>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
            <a class="btn btn-default" href="/">На главную</a>
        </div>
    </div>
</div>
</body>
</html>