<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>">
</head>
<body>

<div class="container">

    <div class="card">
        <div class="card-body">
            <h2>Registration Form</h2><hr/>
            <div id="registration-form">
                <form:form modelAttribute="student" action="registration" method="post">
                    <fieldset>
                        <legend>Register an Student</legend>
                        <div class="error_div">
                            <form:errors path="*" cssStyle="color:red;"/>
                        </div>
                        <div class="form-group row">
                            <label for="id" class="col-sm-2 col-form-label">ID</label>
                            <div class="col-sm-7">
                                <form:input path="id" id="id" class="form-control"/>
                                <div style="text-align: center">
                                    <form:errors path="id" cssStyle="color: red;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="firstName" class="col-sm-2 col-form-label">First
                                Name</label>
                            <div class="col-sm-7">
                                <form:input path="firstName" id="firstName" class="form-control"/>
                                <div style="text-align: center">
                                    <form:errors path="firstName" cssStyle="color: red;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="lastName" class="col-sm-2 col-form-label">Last
                                Name</label>
                            <div class="col-sm-7">
                                <form:input path="lastName" id="lastName" class="form-control"/>
                                <div style="text-align: center">
                                    <form:errors path="lastName" cssStyle="color: red;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-7">
                                <form:input path="email" id="email" class="form-control"/>
                                <div style="text-align: center">
                                    <form:errors path="email" cssStyle="color: red;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-2 col-form-label">Gender: </label>
                            <div class="col-sm-7">
                                <form:select path="gender" class="form-control">
                                    <option selected="selected" value=""> -- Please choose --</option>
                                    <form:options items="${genders}"/>
                                </form:select>
                                <div style="text-align: center">
                                    <form:errors path="gender" cssStyle="color: red;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="birthday" class="col-sm-2 col-form-label">Birthday</label>
                            <div class="col-sm-7">
                                <form:input path="birthday" id="birthday" class="form-control"/>
                                <div style="text-align: center">
                                    <form:errors path="birthday" cssStyle="color: red;"/>
                                </div>
                            </div>
                        </div>
                        <fieldset>
                            <legend>Phone:</legend>
                            <div>
                                <div class="form-group row">
                                    <label for="birthday" class="col-sm-2 col-form-label">Area</label>
                                    <div class="col-sm-7">
                                        <form:input path="phone.area" id="phone.area" class="form-control"/>
                                        <div style="text-align: center">
                                            <form:errors path="phone.area" cssStyle="color: red;"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone.prefix" class="col-sm-2 col-form-label">Prefix</label>
                                    <div class="col-sm-7">
                                        <form:input path="phone.prefix" id="phone.prefix" class="form-control"/>
                                        <div style="text-align: center">
                                            <form:errors path="phone.prefix" cssStyle="color: red;"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone.number" class="col-sm-2 col-form-label">Number</label>
                                    <div class="col-sm-7">
                                        <form:input path="phone.number" id="phone.number" class="form-control"/>
                                        <div style="text-align: center">
                                            <form:errors path="phone.number" cssStyle="color: red;"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <p id="buttons">
                            <input id="reset" type="reset" tabindex="4" class="btn btn-secondary" value="Reset"/>
                            <input id="submit" type="submit" tabindex="5" class="btn btn-primary" value="Register Student"/>
                        </p>
                    </fieldset>
                </form:form>

            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>