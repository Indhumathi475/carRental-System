<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>error</title>
    </head>
<body>
    <div align="center">
        <h1>${errorMessage }</h1>
        <br>
        <h3><a href="/index">Return</a></h3>
    </div>
</body>
</html>