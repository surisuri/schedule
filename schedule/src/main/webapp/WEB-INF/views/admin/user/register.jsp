<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>사용자 등록</title>
  
  <!-- Bootstrap core CSS-->
  <link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="./resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="./resources/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">사용자 등록</div>
      <div class="card-body">
        <form id="registForm" method="post" action="register.do">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="labelName">이름</label>
                <input class="form-control" id="name" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="email">이메일</label>
            <input class="form-control" id="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for=password1">비밀번호</label>
                <input class="form-control" id="password1" type="password" placeholder="Password">
              </div>
              <div class="col-md-6">
                <label for="password2">비밀번호 확인</label>
                <input class="form-control" id="password2" type="password" placeholder="Confirm password">
              </div>
            </div>
          </div>
          <div id="regist" class="btn btn-primary btn-block">등록하기</div>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="javascript:fn_goLogin();">로그인 페이지 이동</a>
          <a class="d-block small" href="javascript:fn_goForgotPassword();">비밀번호 분실</a>
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

	// 최초 사용자 등록 처리
	$('#regist').on('click', function(){
		$('#registForm').submit();
	});        
  
  </script>
</body>

</html>
