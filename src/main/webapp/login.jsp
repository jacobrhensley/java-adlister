<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <jsp:include page="partials/head.jsp" />
</head>
<body>
<h1 class="d-flex justify-content-center">Login</h1>
<form class="" method="POST" action="">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-default">Username</span>
        </div>
        <input id="username" type="text" name="username" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
    </div>

    <br>

    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-default">Password</span>
        </div>
        <input id="password" type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
    </div>

    <br>
    <button type="submit" class="btn btn-secondary btn-lg btn-block">Login</button>

    <c:if test="${param.username == 'admin' && param.password == 'password'}">
        <% response.sendRedirect("/profile.jsp"); %>
    </c:if>
</form>


<jsp:include page="partials/bootstrapfiles.jsp" />
</body>
</html>