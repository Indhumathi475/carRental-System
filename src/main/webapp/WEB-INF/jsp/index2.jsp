<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
   </head>
<body>
    <header>
        <div class="header-content">
            <div class="navbar">
               <div class="dropdown">
                    <button class="dropbtn">Car</button>
                    <div class="dropdown-content">
                        <a href="/customerCarReport">Car Report</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Booking</button>
                    <div class="dropdown-content">
                        <a href="/customerCarReport">New Booking</a>
                        <a href="/bookingReport">Booking Reports</a>
                    </div>
                </div>
            </div>
            <div class="navbar navbar-right">
                <a href="/myaccount" class="myaccount-btn">My Account</a>
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>
    
</body>
</html>