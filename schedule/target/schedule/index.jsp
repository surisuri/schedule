<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>심리실 스케쥴</title>

  <!-- Bootstrap core CSS-->
  <link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="./resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="./resources/css/sb-admin.css" rel="stylesheet">
  
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">로그인</div>
      <div class="card-body">
        <form id="loginForm" action="login.do" method="post" >
          <div class="form-group">
            <label for="exampleInputEmail1">이메일</label>
            <input class="form-control" id="email" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">비밀번호</label>
            <input class="form-control" id="password" name="password" type="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> 비밀번호 기억하기</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="javascript:fn_login();" >로그인</a>
        </form>
          <div class="text-center">
  </div >  
  
        <div class="text-center">
          <div id="regist" class="small mt-3">등록하기</div>
          <div id="forgot" class="small mt-3"><a href="/views/admin/user/forgot-password.html">비밀번호가 기억안날 때</a></div>
        </div>
      </div>
    </div>
  </div>
  
  
  <!-- Bootstrap core JavaScript-->
  <script src="./resources/vendor/jquery/jquery.min.js"></script>
  <script src="./resources/vendor/popper/popper.min.js"></script>
  <script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
  
  <!-- Core plugin JavaScript-->
  <script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  
  
	<script type='text/javascript'>
		$(document).ready(function(){
			
			// 최초 사용자 등록 처리
			$('#regist').on('click', function(){
			    window.location.href = "registerView.do";
			});
			
			// 비밀번호 분실 시 처리 
			$('#forogt').on('click', function(){
			});
		});
	
		/**
		 *  로그인 처리 
		 */
		function fn_login(){
			$('#loginForm').submit();
		}
	</script>
</body>

</html>
