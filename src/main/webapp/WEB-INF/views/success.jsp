<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>SUCCESS</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-body">
            <h2>Student Save successfully</h2><hr/>
            <div class="row">
                <div class="col-sm-3">Id:</div>
                <div class="col-sm-9 text-secondary">${student.id}</div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">Email:</div>
                <div class="col-sm-9 text-secondary">${student.firstName}</div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">Last Name:</div>
                <div class="col-sm-9 text-secondary">${student.lastName}</div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">Email:</div>
                <div class="col-sm-9 text-secondary">${student.email}</div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">Gender:</div>
                <div class="col-sm-9 text-secondary">${student.gender}</div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">Birthday:</div>
                <div class="col-sm-9 text-secondary">${student.birthday}</div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">Phone:</div>
                <div class="col-sm-9 text-secondary">${student.phone.area}-${student.phone.prefix}-${student.phone.number}</div>
            </div>
            <hr/>

            <a href="<c:url value="/" />" class="btn btn-secondary"> Go to Home </a>
        </div>
    </div>

</div>
</body>
</html>