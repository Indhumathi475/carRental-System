<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Variants</title>
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
  <div class="main-container"3>
      <h1 class="primary-heading">Car Variant Report</h1>
      <br />
      <div class="table-container">
        <table class="table">
          <tr class="table-header">
            <th>Variant Id</th>
            <th>Variant Name</th>
            <th>Number of Seats</th>
            <th>Fuel</th>
            <th>Delete</th>
          </tr>

          <c:forEach items="${variantList }" var="variant">
            <tr class="table-row">
              <td>${variant.variantId}</td>
              <td>${variant.variantName}</td>
              <td>${variant.numberOfSeat}</td>
              <td>${variant.fuel}</td>
              <td><a class="action-btn delete-btn" href="/variantDeletion/${variant.variantId}">Delete</a></td>
            </tr>
          </c:forEach>
        </table>
      </div>
      <br />
      <h3><a class="return-link" href="/index">Return</a></h3>
  </div>
</body>
</html>