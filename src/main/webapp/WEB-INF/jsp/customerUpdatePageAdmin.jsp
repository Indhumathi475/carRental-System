<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update customer details</title>
    </head>
<body>
    <header>
        <div class="header-content">
            <div class="navbar">
                <a href="/index" class="btn" id="home-btn">Home</a>
            </div>
            </div>
            <div class="navbar navbar-right">
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>
    <div class="form-container">
        <h2 class="form-heading">Update customer details</h2>
        <form:form action="/myaccount/update" method="post" modelAttribute="customer">
            <form:hidden path="username"/>
            <form:hidden path="email"/>
            <form:hidden path="firstName"/>
            <form:hidden path="mobile"/>
            <form:hidden path="license"/>

            <label class="label" for="username">Username:</label>
            <form:input path="username" id="username" class="input" disabled="true" />

            <label class="label" for="email">Email:</label>
            <form:input path="email" id="email" class="input" disabled="true" />

            <label class="label" for="firstName">Enter First Name:</label>
            <form:input path="firstName" id="firstName" class="input" placeholder="First Name" disabled="true" />

            <label class="label" for="lastName">Enter Last Name:</label>
            <form:input path="lastName" id="lastName" class="input" placeholder="Last Name" />

            <label class="label" for="address">Enter Address:</label>
            <form:input path="address" id="address" class="input" placeholder="Address" />

            <label class="label" for="mobile">Enter Mobile Number:</label>
            <form:input path="mobile" id="mobile" class="input" placeholder="Mobile Number" disabled="true" />

            <label class="label" for="status">Enter Status:</label>
            <form:input path="status" id="status" class="input" placeholder="Status" />

            <label class="label" for="license">Enter Driving License Number:</label>
            <form:input path="license" id="license" class="input" placeholder="License Driving Number" disabled="true"/>

            <label class="label" for="expiryDate">Enter Expiry Date:</label>
            <form:input path="expiryDate" id="expiryDate" class="input" placeholder="Expiry Date" />

            <button class="submit-button btn" type="submit">Submit</button>
            <button class="reset-button btn" type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>