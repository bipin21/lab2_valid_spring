<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-body">
            <h2>Hello Student!!!</h2>
            <p class="register_button ">
                <button onclick="window.location='<spring:url value="/registration"/>' " class="btn btn-primary">
                    Student Registration
                </button>
            </p>
        </div>
    </div>
</div>
</body>
</html>
