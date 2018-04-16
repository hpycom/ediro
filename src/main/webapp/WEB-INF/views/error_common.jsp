<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	${exception.getMessage() } 
</h1>

 <c:forEach items="${exception.getStackTrace() }" var="stack">
 <li>${stack.toString() }</li>
 </c:forEach>
</body>
</html>