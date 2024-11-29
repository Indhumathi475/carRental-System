<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header-content img {
            height: 50px;
        }

        .header-content .navbar a {
            text-decoration: none;
            color: white;
            margin-left: 15px;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .header-content .navbar a:hover {
            background-color: #388e3c;
        }

        .booking-detail-container {
            margin: 20px auto;
            max-width: 800px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 20px;
        }

        .section-heading {
            font-size: 1.4em;
            margin-bottom: 10px;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 5px;
            color: #333;
        }

        .detail-item {
            font-size: 1.1em;
            margin-bottom: 8px;
        }

        .detail-item strong {
            color: #555;
        }

        .detail-value {
            color: #4CAF50;
            font-weight: bold;
        }

        .transaction-item {
            background: #f1f1f1;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
        }

        .transaction-item .status {
            font-weight: bold;
            text-transform: uppercase;
        }

        .status.pending {
            color: #ffc107;
        }

        .status.cancelled {
            color: #dc3545;
        }

        .status.confirmed {
            color: #28a745;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <!-- Update the image path to your preferred logo -->
            <img src="${pageContext.request.contextPath}/resources/images/new_logo.png" alt="Company Logo">
            <div class="navbar">
                <a href="/index" class="btn" id="home-btn">Home</a>
                <a href="/myaccount" class="btn">My Account</a>
                <a href="/logout" class="btn">Logout</a>
            </div>
        </div>
    </header>

    <div class="booking-detail-container">
        <h3 class="booking-heading">Booking Report</h3>
        <div class="booking-main-container">
            <div class="section booking-details" id="bk-section">
                <h2 class="section-heading">Booking Information:</h2>
                <p class="detail-item"><strong>Booking ID:</strong> <span class="detail-value">${booking.bookingId}</span></p>
                <p class="detail-item"><strong>Username:</strong> <span class="detail-value">${booking.username}</span></p>
                <p class="detail-item"><strong>Start Date:</strong> <span class="detail-value">${booking.fromDate}</span></p>
                <p class="detail-item"><strong>End Date:</strong> <span class="detail-value">${booking.toDate}</span></p>
                <p class="detail-item"><strong>Status:</strong> <span class="detail-value">${booking.status}</span></p>
            </div>

            <div class="section car-details" id="bk-section">
                <h2 class="section-heading">Car Detail:</h2>
                <p class="detail-item"><strong>Car Number:</strong> <span class="detail-value">${car.carNumber}</span></p>
                <p class="detail-item"><strong>Car Name:</strong> <span class="detail-value">${car.carName}</span></p>
                <p class="detail-item"><strong>Car Color:</strong> <span class="detail-value">${car.carColor}</span></p>
                <p class="detail-item"><strong>Manufacturer:</strong> <span class="detail-value">${car.manufacturer}</span></p>
            </div>

            <div class="section payment-info" id="bk-section">
                <h2 class="section-heading">Payment Information:</h2>
                <p class="detail-item"><strong>Total Payment:</strong> <span class="detail-value">₹${booking.totalPayment}</span></p>
                <p class="detail-item"><strong>Advance Payments:</strong> <span class="detail-value">₹${booking.advancePayment}</span></p>
            </div>
        </div>
    </div>
</body>
</html>
    