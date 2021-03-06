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
	<form id="subform" class="needs-validation" action="/order/member/joinMember" method="post" novalidate>
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
			
			 <div class="col-md-5 mb-1 ">
			  <label for="memberID">아이디</label>
				
				 <div class="input-group">
					<input type="text" class="form-control " name="memberID" id="memberID"  pattern=".{6,}" required/>
					 
					  <div class="input-group-append">
		                 	 	  <input class="btn btn-outline-dark" id="btnDupIDcheck" type="button" value="아이디중복" >
		              </div>
		                
					  <div class="invalid-feedback">
		                  	아이디를 여섯자 이상 입력해 주세요
		              </div>
		              
			     </div>
			   
			     <input type="text" class="form-control " id = "idDupCheck" required>
					<div class="invalid-feedback">
		                  	중복체크 해주세요
		              </div>
			     <p class="help-block" id="p_dupChkID"><span></span></p>
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
			  <label for="memberPwd_Cfm">비밀번호 확인</label>
				<input type="password" class="form-control" name="memberPwd_Cfm" id="memberPwd_Cfm" pattern=".{4,}" required/>
				  <div class="invalid-feedback">
	                  	비밀번호를 4자 이상 입력해 주세요
	              </div>
	              
	               <input type="text" class="form-control " id = "passWordCheck" required>
					<div class="invalid-feedback">
		                  비밀번호가 일치하지 않습니다.
		              </div>
			   
		 	</div>
		 	<p class="help-block" id="p_passCfmChk"><span></span></p>
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
			             <input type="text" name="postno" id="postno" class="form-control" placeholder="우편번호" required>
	                 	   <div class="input-group-append">
	                 	 	  <input class="btn btn-outline-dark" type="button" value="우편번호찾기" onclick="sample3_execDaumPostcode()">
	                 	   </div>
	                       <div class="invalid-feedback">
		                  	우편번호를 입력해 주세요.
		              	  </div>
		              		
		            </div>
	           </div>
           <div class="row">
           		<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
					<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
				</div>
           </div>
           <div class="row mb-4 form-group" >
		            <div class="col-md-8 ">
	                      <input type="text" name="address" id="address" class="form-control" placeholder="주소" readonly="readonly" required>
	                        <div class="invalid-feedback">
		                  	주소를 입력해 주세요.
		              		</div>
	                </div>
	                 <div class="col-md-8 ">
	                 	<label></label>
	                 	  <input type="text" name="address_detail"  id="address_detail" class="form-control" placeholder="상세주소" required >
	                        <div class="invalid-feedback">
		                  	상세주소를 입력해 주세요.
		              		</div>
	                 </div>
               
           </div>
           
     	<hr class="mb-4">
	
		<div class="row">
			<div class="col-md-2 ml-1">
				<button class="btn btn-primary btn-lg btn-block" type="submit" id="btnSubmit">저장</button>
			</div>
		</div>
	</form>
 </div> <!-- container -->
 
 

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
<script src="/resources/bootStrap/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>


	
$("#idDupCheck").hide();
$("#passWordCheck").hide();

$("#memberID").change(function() {
	$('#idDupCheck').val('');
	$("#p_dupChkID span").text('');
});


function passcheck() {
	var pass1 = $('#memberPwd').val();
	
	var pass2 = $('#memberPwd_Cfm').val();
	var m = document.getElementById("passWordCheck");
	if(pass1 != pass2)
		{
			m.setCustomValidity('비밀번호가 일치하지 않습니다.');
			$("#passWordCheck").val('');
			return false;
		}
	else
		{
			m.setCustomValidity('');
			$("#passWordCheck").val('checked');
			
			return true;
		}
}

(function() {
  'use strict';
 
  window.addEventListener('load', function() {
	  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
    	 if( passcheck()===false)
    	 {
             event.preventDefault();
             event.stopPropagation();
           }
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
       
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
   
})();

$("#btnDupIDcheck").on("click",function(){
	
	var idName = $("#memberID").val();
	if(idName.length < 6)
		return;
	
	$.ajax({
		type:'POST',
		url:'/order/member_rest/isMember/'+idName,
		headers:{
			"Content-Type":"application/json",
			"X-HTTP-Method-Override":"POST"
		},
		dataType:'text',
		success: function(result){
			if (result == 0)
				{
				$("#p_dupChkID  span").css('color','blue');
				
				$("#p_dupChkID  span").text(' 사용하셔도 되는 아이디 입니다. ');
					//alert('사용하셔도 되는 아이디 입니다.');
					$("#idDupCheck").val('checked');
					
				}
			else
				{
				$("#p_dupChkID span").css('color','red');
				
				$("#p_dupChkID span").text('중복되는 아이디 입니다.');
				
					//alert('중복되는 아이디 입니다.');
					$("#idDupCheck").val('');
					
				}
		}
	});
});

var element_wrap = document.getElementById('wrap');

function foldDaumPostcode() {
    // iframe을 넣은 element를 안보이게 한다.
    element_wrap.style.display = 'none';
}

function sample3_execDaumPostcode() {
    // 현재 scroll 위치를 저장해놓는다.
    var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
    new daum.Postcode({
        oncomplete: function(data) {
            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = data.address; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 기본 주소가 도로명 타입일때 조합한다.
            if(data.addressType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postno').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('address').value = fullAddr;

            // iframe을 넣은 element를 안보이게 한다.
            // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
            element_wrap.style.display = 'none';

            // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
            document.body.scrollTop = currentScroll;
        },
        // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
        onresize : function(size) {
            element_wrap.style.height = size.height+'px';
        },
        width : '100%',
        height : '100%'
    }).embed(element_wrap);

    // iframe을 넣은 element를 보이게 한다.
    element_wrap.style.display = 'block';
}

	</script>
</body>
</html>