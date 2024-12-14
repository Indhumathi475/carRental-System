<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('/path-to-background-image.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        header {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar {
            display: flex;
            align-items: center;
        }

        .navbar .dropdown {
            position: relative;
            margin-right: 15px;
        }

        .dropdown .dropbtn {
            background-color: #007BFF;
            color: white;
            padding: 10px 15px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .dropdown .dropbtn:hover {
            background-color: #0056b3;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 5px;
        }

        .dropdown-content a {
            color: #333;
            padding: 10px 15px;
            text-decoration: none;
            display: block;
            border-bottom: 1px solid #ddd;
        }

        .dropdown-content a:last-child {
            border-bottom: none;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .logout-btn {
            background-color: #dc3545;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .logout-btn:hover {
            background-color: #a71d2a;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <div class="navbar">
                <div class="dropdown">
                    <button class="dropbtn">Customer</button>
                    <div class="dropdown-content">
                        <a href="/customerReport">Customer Reports</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Variant</button>
                    <div class="dropdown-content">
                        <a href="/variantAdd">Variant Addition</a>
                        <a href="/variantReport">Variant Reports</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Car</button>
                    <div class="dropdown-content">
                        <a href="/carAdd">Car Addition</a>
                        <a href="/carReport">Car Report</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Booking</button>
                    <div class="dropdown-content">
                        <a href="/bookingPayments">Booking Payments</a>
                        <a href="/bookingReport">Booking Reports</a>
                    </div>
                </div>
            </div>
            <div class="navbar navbar-right">
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>
</body>
</html>
