<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/style.css">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<div>
    <h1 id="field_name">Регистрация</h1>
    <sf:form action="/sign_up" method="post" modelAttribute="userform">
        <div class="panel panel-default panel-body">
            <div class="col-md-6">
                <sf:label cssClass="form-group" path="name">Имя: </sf:label> <sf:input path="name"/> <br>
                <sf:label cssClass="form-group" path="email">Email: </sf:label> <sf:input path="email"/> <br>
                <sf:label cssClass="form-group" path="password">Пароль: </sf:label> <sf:input path="password"/> <br>
                <sf:label cssClass="form-group" path="repassword">Повторите пароль: </sf:label> <sf:input
                    path="repassword"/> <br>
                <button class="btn btn-primary" type="submit">Сохранить</button>
            </div>
        </div>
    </sf:form>
</div>
<a class="btn btn-default" href="/">На главную</a>
</body>
</html>