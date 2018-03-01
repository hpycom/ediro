<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %>

<html lang="ko">
<head>
	<title>EDIRO</title>
	 <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="/resources/css/orderMain.css" rel="stylesheet" type="text/css" />
	
</head>
<body class="bg-light">

 <div class="container">
 	<h4 class="mb-4">회원가입</h4>
	<form id="subform" class="needs-validation" >
		 <div class="row">
		 <div class="col-md-8 ">
			<label for="companyName" class="label">회사명(상호)</label>
			<input type="text" class="form-control" name="companyName" id="companyName"/>
			  <div class="invalid-feedback">
                  Valid first name is required.
                </div>
		</div>
		</div>
	</form>
 
	
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="/resources/bootStrap/js/bootstrap.min.js"></script>
</body>
</html>