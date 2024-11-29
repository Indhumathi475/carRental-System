<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update car</title>
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
        <h2 class="form-heading">Update Car</h2>
        <form:form action="/carUpdate" method="post" modelAttribute="carRecord">
            <form:hidden path="available" />
            <form:hidden path="carNumber" />
            <form:hidden path="carName" />
            <form:hidden path="carColor" />
            <form:hidden path="manufacturer" />
            <form:hidden path="yearOfMfg" />
            <form:hidden path="variantId" />

            <label class="label" for="carNumber">Car Registration Number:</label>
            <form:input path="carNumber" id="carNumber" class="input" placeholder="Registration number" disabled="true" />
            <br /><br />

            <label class="label" for="carName">Car Name:</label>
            <form:input path="carName" id="carName" class="input" placeholder="Car name" disabled="true"/>
            <br /><br />

            <label class="label" for="carColor">Car Color:</label>
            <form:input path="carColor" id="carColor" class="input" placeholder="Car color" disabled="true"/>
            <br /><br />

            <label class="label" for="manufacturer">Car Manufacturer Name:</label>
            <form:input path="manufacturer" id="manufacturer" class="input" placeholder="Manufacturer name" disabled="true"/>
            <br /><br />

            <label class="label" for="yearOfMfg">Year of manufacturing:</label>
            <form:input path="yearOfMfg" id="yearOfMfg" class="input" placeholder="Year of manufacturing" disabled="true"/>
            <br /><br />

            <label class="label" for="rentRate">Enter New Rent rate per hour:</label>
            <form:input path="rentRate" id="rentRate" class="input" placeholder="Rent rate per hour" />
            <br /><br />

            <label class="label" for="available">Enter New Availability status:</label>
            <form:input path="available" id="available" class="input" placeholder="Status" />
            <br /><br />

            <div class="variantIdContainer">
                <label class="label" for="variantId">Variant Id:</label>
                <form:input path="variantId" id="variantId" class="input" placeholder="Variant Id" disabled="true"/>
            </div>

            <button class="submit-button btn" type="submit">Submit</button>
            <button class="reset-button btn" type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>