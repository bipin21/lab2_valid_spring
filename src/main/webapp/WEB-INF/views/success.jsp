<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>SUCCESS</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>">
</head>
<body>
<div class="main-page">
    <h2>Student Save successfully</h2>
    <p>
        Student Id: ${student.id}<br>
        Student FirstName: ${student.firstName}<br>
        Student LastName: ${student.lastName}<br>
        Student Email: ${student.email}<br>
        Student Gender: ${student.gender}<br>
        Student Birthday: ${student.birthday}<br>
        Student Phone: ${student.phone.area}-${student.phone.prefix}-${student.phone.number}<br>
    </p>
</div>
</body>
</html>