<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>">
</head>
<body>
<div class="main-page">
    <h1>Registration Form</h1><br/>

    <div id="registration-form">
        <form:form modelAttribute="student" action="registration" method="post">
            <fieldset>
                <legend>Register an Student</legend>
                <p>
                    <form:errors path="*" cssStyle="color:red;"/>
                </p>
                <p>
                    <label>ID: </label>
                    <form:input path="id" id="id"/>
                    <div style="text-align: center">
                        <form:errors path="id" cssStyle="color: red;"/>
                    </div>
                </p>

                <p>
                    <label for="firstName">First Name: </label>
                    <form:input path="firstName" id="firstName"/>
                    <div style="text-align: center">
                        <form:errors path="firstName" cssStyle="color: red;"/>
                    </div>
                </p>
                <p>
                    <label for="lastName">Last Name: </label>
                    <form:input path="lastName" id="lastName"/>
                    <div style="text-align: center">
                        <form:errors path="lastName" cssStyle="color: red;"/>
                    </div>
                </p>
                <p>
                    <label for="email">Email: </label>
                    <form:input path="email" id="email"/>
                    <div style="text-align: center">
                        <form:errors path="email" cssStyle="color: red;"/>
                    </div>
                </p>
                <p>
                    <label for="gender">Gender: </label>
                    <form:select path="gender">
                        <option selected="selected" value=""> -- Please choose --</option>
                        <form:options items="${genders}"  />
                    </form:select>
                    <div style="text-align: center">
                        <form:errors path="gender" cssStyle="color: red;"/>
                    </div>
                </p>
                <p>
                    <label for="birthday">Birthday: </label>
                    <form:input path="birthday" id="birthday"/>
                    <div style="text-align: center">
                        <form:errors path="birthday" cssStyle="color: red;"/>
                    </div>
                </p>
                <fieldset>
                    <legend>Phone: </legend>
                    <div>
                        <p>
                            <label for="phone.area">Area: </label>
                            <form:input path="phone.area" id="area"/>
                            <div style="text-align: center">
                                <form:errors path="phone.area" cssStyle="color: red;"/>
                            </div>
                        </p>
                        <p>
                            <label for="phone.prefix">Prefix: </label>
                            <form:input path="phone.prefix" id="prefix"/>
                            <div style="text-align: center">
                                <form:errors path="phone.prefix" cssStyle="color: red;"/>
                            </div>
                        </p>
                        <p>
                            <label for="phone.number">Number: </label>
                            <form:input path="phone.number" id="number"/>
                            <div style="text-align: center">
                                <form:errors path="phone.number" cssStyle="color: red;"/>
                            </div>
                        </p>
                </div>
                </fieldset>

                <p id="buttons">
                    <input id="reset" type="reset" tabindex="3" value="Reset"/>
                    <input id="submit" type="submit" tabindex="5" value="Register Student"/>
                </p>
            </fieldset>
        </form:form>

    </div>
</div>
</body>
</html>