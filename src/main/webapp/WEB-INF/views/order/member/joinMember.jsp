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
	<form id="subform" class="needs-validation" novalidate>
		 <div class="row">
				
			 <div class="col-md-8 mb-1 ">
			  <label for="companyName">회사명(상호)</label>
				<input type="text" class="form-control" name="companyName" id="companyName" required/>
				  <div class="invalid-feedback">
	                  	회사명(상호)를 입력해 주세요
	              </div>
		     </div>
		 </div>
		  <div class="row">
			 <div class="col-md-4 mb-1 ">
			  <label for="memberID">아이디</label>
				<input type="text" class="form-control" name="memberID" id="memberID" required/>
				  <div class="invalid-feedback">
	                  	아이디를 입력해 주세요
	              </div>
		     </div>
		 </div>
		 <div class="row">
			 <div class="col-md-3 mb-1 ">
			  <label for="memberID">비밀번호</label>
				<input type="password" class="form-control" name="memberPwd" id="memberPwd" pattern=".{4,}" required/>
				  <div class="invalid-feedback">
	                  	비밀번호를 4자 이상 입력해 주세요
	              </div>
		 	</div>
		 	<div class="col-md-3 mb-1 ">
			  <label for="memberID_Cfm">비밀번호 확인</label>
				<input type="password" class="form-control" name="memberPwd_Cfm" id="memberPwd_Cfm" pattern=".{4,}" required/>
				  <div class="invalid-feedback">
	                  	비밀번호 확인을 위해 바르게 입력해 주세요
	              </div>
		 	</div>
		 </div>
		 
		  <div class="row">
			 <div class="col-md-4 mb-1 ">
			  <label for="bizRegNo">사업자번호</label>
				<input type="text" class="form-control" name="bizRegNo" id="bizRegNo" pattern="(\d{3})-(\d{2})-(\d{5})$" required/>
				  <div class="invalid-feedback">
	                  	바른 사업자번호를 입력해 주세요.<br> 예)123-45-67890
	              </div>
		 	</div>
		 	
		 </div>
		 <div class="row">
		 	<div class="col-md-3 mb-1 ">
			  <label for="bossName">대표자명</label>
				<input type="text" class="form-control" name="bossName" id="bossName" required/>
				  <div class="invalid-feedback">
	                  	대표자명을  입력해 주세요
	              </div>
		 	</div>
		 </div>
		 <div class="row">
		 	<div class="col-md-3 mb-1">
			  <label for="email">이메일</label>
				<input type="email" class="form-control" name="email" id="email" pattern="[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$" required/>
				  <div class="invalid-feedback">
	                  	이메일명을 바르게 입력해 주세요
	              </div>
	              <p class="help-block">사용하시는 이메일을 입력해 주세요</p>
		 	</div>
		 	
		 </div>
		 <div class="row mb-4">
		        <div class="col-md-4 ">
                     <label for="phone">전화번호</label>
                 	  <input type="tel" name="phone" class="form-control" pattern="(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]|70))-(\d{3,4})-(\d{4})$" required="required">
                        <div class="invalid-feedback">
	                  	지역번호와 함께 바른 전화번호를 입력해 주세요.<br> 예)031-718-2222,070-1212-2323
	              		</div>
                </div>
               <div class="col-md-4 ">
                     <label for="phone_2">전화번호(핸드폰)</label>
                 	  <input type="tel" name="phone_2" class="form-control" pattern="(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]|70))-(\d{3,4})-(\d{4})$">
                        <div class="invalid-feedback">
	                  	지역번호와 함께 바른 전화번호를 입력해 주세요.<br> 예)031-718-2222,070-1212-2323
	              		</div>
                </div>
           </div>
           
           <div class="row mb-4">
		        <div class="col-md-4 ">
                     <label for="fax">팩스번호</label>
                 	  <input type="tel" name="fax" class="form-control" pattern="(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]|70))-(\d{3,4})-(\d{4})$" >
                        <div class="invalid-feedback">
	                  	지역번호와 함께 바른 팩스번호를 입력해 주세요.<br> 예)031-718-2222,070-1212-2323
	              		</div>
                </div>
           </div>
           
           <h4 class="mb-3"><small>주소</small></h4>
           <div class="row mb-4">
		        <div class="col-md-4 input-group">
		             <input type="text" name="postNo" class="form-control" placeholder="우편번호">
                 	   <div class="input-group-append">
                 	 	  <input class="btn btn-outline-dark" type="button" value="우편번호찾기">
                 	   </div>
                        
                      <div class="invalid-feedback">
	                  	우편번호를 입력해 주세요.
	              	  </div>
	              		
	            </div>
              
                	
           </div>
           <div class="row mb-4 form-group" >
		            <div class="col-md-8 ">
	                      <input type="text" name="address" class="form-control" placeholder="주소" >
	                        <div class="invalid-feedback">
		                  	우편번호를 입력해 주세요.
		              		</div>
	                </div>
	                 <div class="col-md-8 ">
	                 	<label></label>
	                 	  <input type="text" name="address-detail" class="form-control" placeholder="상세주소" >
	                        <div class="invalid-feedback">
		                  	우편번호를 입력해 주세요.
		              		</div>
	                 </div>
               
           </div>
           
     	<hr class="mb-4">
	
		<div class="row">
	
		<div class="col-2 ml-5">
			<button class="btn btn-primary btn-lg btn-block" type="submit">저장</button>
		</div>
	
		</div>
	</form>
 
	
</div> <!-- container -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="/resources/bootStrap/js/bootstrap.min.js"></script>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
</body>
</html>