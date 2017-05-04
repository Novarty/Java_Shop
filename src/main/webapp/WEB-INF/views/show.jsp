<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 03.05.2017
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="http://meyerweb.com/eric/tools/css/reset/reset.css">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<html>
<head>

    <title>Товар<%--${item.itemName}--%></title>
</head>
<body>
<div class="container" style="margin-top: 75px;"><%--Item--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="thumbnail">
                <img src="/resources/img/img.png" alt="...">
                <div class="caption">
                    <h3 class="center">${item.itemName}</h3>
                    <p>${item.description}</p>
                    <p class="center"><a href="#" class="btn btn-primary" role="button">В корзину</a>
                        <a href="/" class="btn btn-default" role="button">Вернуться</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<%--Item end--%>
<%--col-md-offset-2--%>
</body>
</html>
