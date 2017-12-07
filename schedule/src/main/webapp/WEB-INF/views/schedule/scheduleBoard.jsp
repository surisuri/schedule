<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>심리실 일정관리</title>
  
  
  <!-- Bootstrap core CSS-->
  <link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="./resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="./resources/css/sb-admin.css" rel="stylesheet">
  
  <!-- jqWidget css -->
  <link rel="stylesheet" href="./resources/vendor/jqwidgets/jqwidgets/styles/jqx.base.css" type="text/css" />
  
  <!-- full calendar style -->  
  <link href='./resources/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
  <link href='./resources/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
  <script src='./resources/fullcalendar/lib/moment.min.js'></script>
  <script src='./resources/fullcalendar/lib/jquery.min.js'></script>
  <script src='./resources/fullcalendar/fullcalendar.min.js'></script>
  <script src='./resources/fullcalendar/locale-all.js'></script>
  
  <!--jqwidget library -->
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxcore.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxscrollbar.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxbuttons.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxlistbox.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxcombobox.js"></script>
  
  <script>
	$(document).ready(function() {
		// LEFT MENU INIT
	    $("body").toggleClass("sidenav-toggled");
	    $(".navbar-sidenav .nav-link-collapse").addClass("collapsed");
	    $(".navbar-sidenav .sidenav-second-level, .navbar-sidenav .sidenav-third-level").removeClass("show");
		
		// FULL CALENDAR INIT
		var initialLocaleCode = 'ko';
		
    var source = [
        // 검사 
            {html: "<div tabIndex=0 style='padding: 1px;'><div>심화인지/학습장애, 소요시간: 4시간</div></div>", label: "심화인지/학습장애", group: "검사" },
            {html: "<div tabIndex=1 style='padding: 1px;'><div>언어발달, 소요시간: 2시간</div></div>", label: "언어발달", group: "검사" },
            {html: "<div tabIndex=2 style='padding: 1px;'><div>발달, 소요시간: 1시간</div></div>", label: "발달", group: "검사" },
            {html: "<div tabIndex=3 style='padding: 1px;'><div>NP Full, 소요시간: 4시간</div></div>", label: "NP Full", group: "검사" },
            {html: "<div tabIndex=4 style='padding: 1px;'><div>지적장애, 소요시간: 1시간</div></div>", label: "지적장애", group: "검사" },
            {html: "<div tabIndex=5 style='padding: 1px;'><div>인지/지적, 소요시간: 1.5시간</div></div>", label: "인지/지적", group: "검사" },
        // 치료 
            {html: "<div tabIndex=6 style='padding: 1px;'><div>놀이치료, 소요시간: 50분</div></div>", label: "놀이치료", group: "치료" },
            {html: "<div tabIndex=7 style='padding: 1px;'><div>인지치료, 소요시간: 50분</div></div>", label: "인지치료", group: "치료" },
            {html: "<div tabIndex=8 style='padding: 1px;'><div>뉴로피드백, 소요시간: 30분,50분</div></div>", label: "뉴로피드백", group: "치료" },
         ];
        // Create a jqxComboBox
		$("#inspection").jqxComboBox({ source: source, autoDropDownHeight: true, width: 300, height: 25,  selectedIndex: 0 });
		$("#cancelSchedule").jqxButton({ width: 40, height: 25});
		$("#registerSchedule").jqxButton({ width: 40, height: 25});
		$("#cancelSchedule").on('click', function(){
			fn_calcel();
		});
		$("#registerSchedule").on('click', function(){
			fn_register();
		});
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay,listMonth'
			},
			locale: initialLocaleCode,
			businessHours: true, // display business hours
			//defaultDate: '2017-11-24',  // today
			navLinks: true, // can click day/week names to navigate views
			selectable: true,
			selectHelper: true,
			select: function(start, end) {

				/*var eventData = {
					start: start,
					end: end,
					//name: name,
					//inspections: inspections,
					//remark: remark
				};*/
				
				// 시작/종료시각을 scheduleMng 팝업화면에 세팅한다.
				var strStart = new String(start.format());		
				var strEnd = new String(end.format());
				
				// 날짜 
				$('#eventDate').val(strStart.substring(0,10));
				
				// 시간 
				var length = strStart.length;
				if(length > 10){  // 주 또는 일 달력에서 입력했을 경우 처리 
					$('#eventStartTime').val(strStart.substr(11,5));
					$('#eventEndTime').val(strEnd.substr(11,5));
				}
				
				// event 등록 modal window를 popup한다.
				$('#scheduleMng').lightbox_me({
						centered: true,
						onLoad: function(){
							$('#scheduleMng').removeClass('modal fade');
						}
					});
				
					//$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				$('#calendar').fullCalendar('unselect');
			},
			dayClick : function(date, jsEvent, view){
				// 관리자가 수동으로 스케쥴을 등록할 때 사용 
				/*$('#scheduleMng').lightbox_me({
					centered: true,
					onLoad: function(){
						$('#scheduleMng').removeClass('modal fade');
					}
				});
				$(this).css('background-color', 'red');*/
			},
			eventClick : function(event){
				if(event.id){
					// 소아청소년과, 정신과, 신경과 간호사들이 기 등록된 스케쥴을 수정할 때 사용 
					$('#scheduleMng').lightbox_me({
						centered: true,
						onLoad: function(){
							$('#scheduleMng').removeClass('modal fade');
						}
					});
					
				}	
			}, 
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [],
		});
		
		//$('table.calendar > tbody > tr > td:nth-child(-n+2)').addClass('fc-sat');  요일 색깔 변경 
	});
	
	// 등록버튼 클릭 시 처리
	function fn_register(){
		var eventData = {
			title:$('#patientName').val(),
			start:$('#eventDate').val() + " " + $('#eventStartTime').val(),
			end:$('#eventDate').val() + " " + $('#eventEndTime').val(),
		};
		
	    	var formSerialized = $('#scheduleForm').serialize();

	    //ajax 등록 처리 
		$.ajax({
		    url: 'registerSchedule.do',
		    async: true, 
		    type: 'POST',
		    //contentType: 'application/json; charset=UTF-8',
		    dataType: 'json',
		    data:formSerialized,
		    beforeSend: function(jqXHR) {
		    },
		    success: function(data) {
	    			if(data.result == 'suc' ){
	    				alert('일정이 저장되었습니다.');  // jqxpopup dialog로 변경 고려 
	    			}
	    			$('#calendar').fullCalendar('renderEvent', eventData, true);
		    },
		    error: function(data) {
				alert(data.result);
		    },
		    complete: function(jqXHR) {}
		});
		
		
	    
	}
	
	// 취소버튼 클릭 시 처리 
	function fn_calcel(){ 
	    $('#eventDate').val('');
	    $('#eventStartTime').val('');
	    $('#eventEndTime').val('');
	    $('#patientName').val('');
		$("#inspection").jqxComboBox({ selectedIndex: 0 }); 
	    $('#simpleMsgCtnt').val('');
	    
	    $('#scheduleMng').addClass('modal fade');
	}
	
	// 로그아웃 처리 
	function logout(){
		if( confirm("로그아웃하시겠습니까?") ){
			$.get(
				"logout.do",
				function(data){
				}
			);
		}
	}
  </script> 
  
  <style>
	#calendar {
		max-width: 100%;
		margin: 0 auto;
	}
  </style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">심리실 일정관리</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title=systemMng">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">시스템관리</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="moneyMng">
          <a class="nav-link" href="charts.html">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">수가관리</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="incomMng">
          <a class="nav-link" href="tables.html">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">수입관리</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
    </div>
  </nav>
  
  <div class="content-wrapper">
    <div id="calendar"></div>
    
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright @ kyungmiKim </small>
        </div>
      </div>
    </footer>
    
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">Ã</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>-->
    
   <!-- 스케쥴 등록/수정 화면  -->
  <div id="scheduleMng" class="modal fade" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">검사/치료 일정관리</div>
      <div class="modal-body">
        <form id="scheduleForm" action="registerSchedule.do" method="post" >
          <div class="form-group">
            <div class="form-row">
                <div class="col-md-9">
		            <label for="dateLable">날짜</label>
		            <input class="form-control" id="eventDate" name="eventDate" type="date" aria-describedby="dateHelp" placeholder="enter Date">
          		</div>
          	</div>
			<div class="form-row">
          		<div class="col-md-6">
		            <label for="startTimeLabel">시작</label>
		            <input class="form-control" id="eventStartTime" name="eventStartTime" type="time" size="7" aria-describedby="startTimeHelp" placeholder="Enter startTime">
          		</div>	
          		<div class="col-md-6">
		            <label for="endTimeLabel">종료</label>
		            <input class="form-control" id="eventEndTime" name="eventEndTime" type="time" aria-describedby="endTimeHelp" placeholder="Enter endTime">
          		</div>
          	 </div>
          </div>
          <div class="form-group">
            <label for="nameLabel">이름</label>
            <input class="form-control" id="patientName" name="patientName" type="text" placeholder="input name">
          </div>
          <div class="form-group">
            <label for="inspectionLabel">검사/치료</label>            
       		  <div id="inspection"></div>
          </div>
          <div class="form-group">
            <label for="simpleMsgCtntLabel">간단 메시지</label>
            <input class="form-control" id="simpleMsgCtnt" name="simpleMsgCtnt" type="text" placeholder="input remark">
          </div>                    
          <div class="form-group">
          	<div class="form-row">
          	  <div class="col-auto">
	          	<input type="button" class="close" id="cancelSchedule" value="취소" />
	          </div>
	          <div class="col-auto">
	          	<input type="button" id="registerSchedule" class="close"  value="등록" />
	          </div>	
	        </div>
        	  </div>	
        </form>
  	  </div > 
  	  <div class="modal-footer"></div>
     </div>
     </div> 
   </div>
	
    <!-- Bootstrap core JavaScript-->
    <script src="./resources/vendor/popper/popper.min.js"></script>
    <script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    
    <!--  jquery lightbox_me -->
    <script src="./resources/vendor/lightbox_me/jquery.lightbox_me.js" ></script>
    
    <!-- Core plugin JavaScript-->
    <script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    
    <!-- Custom scripts for all pages-->
    <script src="./resources/js/sb-admin.min.js"></script>
  </div>

</body>
  
</html>
