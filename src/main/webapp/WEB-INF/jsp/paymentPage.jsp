<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Make Payment</title>
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

    <div class="form-container" id="payment-form-container">
        <h2 class="form-heading">Make Payment</h2>
        <form:form action="/makePayment" method="post" modelAttribute="transaction">
            <p class="detail-item"><strong>Booking ID:</strong> <span class="detail-value">${transaction.bookingId}</span></p>
            <p class="detail-item"><strong>Total Payment:</strong> <span class="detail-value">${totalPayment}</span></p>
            <p class="detail-item"><strong>Pending Payment:</strong> <span class="detail-value">${pendingPayment}</span></p>
            <p class="description"><strong>Make a payment on <span>rent&drive@upi</span> using your preferred UPI app and fill the form below!</strong></p>

            <form:hidden path="bookingId"/>
            <form:hidden path="transactionId" />

            <label class="label" for="transactionId">Transaction Id:</label>
            <form:input path="transactionId" id="transactionId" class="input" disabled="true"/>
            <br /><br />

            <label class="label" for="amount">Amount paid:</label>
            <form:input path="amount" id="amount" class="input" placeholder="Enter payment amount"/>
            <br /><br />

            <label class="label" for="paymentRefNo">Payment Reference Number:</label>
            <form:input path="paymentRefNo" id="paymentRefNo" class="input" placeholder="Enter payment reference number" />
            <br /><br />

            <button class="submit-button btn" type="submit">Make Payment</button>
            <button class="reset-button btn" type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>