
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

  <!-- Page level plugin CSS-->
  <link href="./resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="./resources/css/sb-admin.css" rel="stylesheet">
  
  <!-- jqWidget Grid CSS / JS -->
  <link rel="stylesheet" href="./resources/vendor/jqwidgets/jqwidgets/styles/jqx.base.css" type="text/css" />
  <link rel="stylesheet" href="./resources/vendor/jqwidgets/jqwidgets/styles/jqx.classic.css" type="text/css" />
  
  <script src="./resources/vendor/jquery/jquery.min.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxcore.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxbuttons.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxscrollbar.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxmenu.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.js"></script>
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.selection.js"></script> 
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.columnsresize.js"></script>   
  <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxdata.js"></script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
 
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="javascript:fn_goMain();">심리실 일정관리</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">스케쥴 관리</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Medical Charge">
          <a class="nav-link" href="javascript:fn_moveImcoming();">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">수입 관리</span>
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
    <div class="container-fluid">
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>  수가 관리
        </div>
        <div class="card-body">
          <div class="table-responsive">
          		<div id="medicalChargeGrid"></div>
          </div>
        </div>
        <div class="card-footer small text-muted"></div> <!--  update date  -->
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © KyungmiKim</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    
    
    <!-- Logout Modal-->
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
    </div>
    <!-- Bootstrap core JavaScript-->
    <!--  <script src="./resources/vendor/jquery/jquery.min.js"></script> -->
    <script src="./resources/vendor/popper/popper.min.js"></script>
    <script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- Core plugin JavaScript-->
    <script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    
    <!-- Page level plugin JavaScript-->
    <script src="./resources/vendor/datatables/jquery.dataTables.js"></script>
    <script src="./resources/vendor/datatables/dataTables.bootstrap4.js"></script>
    
    <!-- Custom scripts for all pages-->
    <script src="./resources/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="./resources/js/sb-admin-datatables.min.js"></script>
    
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxdata.js"></script> 
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.edit.js"></script>  
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.pager.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxgrid.selection.js"></script> 
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxnumberinput.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxwindow.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="./resources/vendor/jqwidgets/jqwidgets/jqxinput.js"></script>
  </div>
  
    <script>
	$(document).ready(function() {
		
		// 그리드
        var generaterow = function () {
            var row = {};
            row["INSPECTION_CODE"] = '';
            row["INSPECTION_NAME"] = '';
            row['TREAT_DVS_CD'] = '01';  // 검사 / 치료 구분코드
            row['TREAT_DVS_NM'] = '검사';
            row["REMARK"] = '';
            row["CHARGE"] = 0;
            row['CREATE_USR_ID']='';
            row['CREATE_DT']='';
            row['UPDATE_USR_ID']='';
            row['UPDATE_DT']='';
            
            return row;
        }
		
		// 검사방법코드 
 		var treatDvsArray = [
                 { value: "01", label: "검사" },
                 { value: "02", label: "치료" }
            ];
         var treatSource =
         {
              datatype: "array",
              datafields: [
                  { name: 'label', type: 'string' },
                  { name: 'value', type: 'string' }
              ],
              localdata: treatDvsArray
         };
         var treatAdapter = new $.jqx.dataAdapter(treatSource, {
             autoBind: true
         });		
		
        var source =
        {
            url: 'selectListMedicalCharge.do',
            type: 'POST',
            datatype: "json",
            datafields:
            [
                { name: 'INSPECTION_CODE', type: 'string' },
                { name: 'INSPECTION_NAME', type: 'string' },
                { name: 'TREAT_DVS_NM', value: 'TREAT_DVS_CD', values: { source: treatAdapter.records, value: 'value', name: 'label' } },
                { name: 'TREAT_DVS_CD', value: 'string' },
                { name: 'REMARK', type: 'string' },
                { name: 'CHARGE', type: 'number' },
                { name: 'CREATE_USR_ID', type: 'string'},
                { name: 'CREATE_DT', type: 'string'},
                { name: 'UPDATE_USR_ID', type: 'string'},
                { name: 'UPDATE_DT', type: 'string'}
            ],
            addrow: function (rowid, rowdata, position, commit) {
                // synchronize with the server - send insert command
                // call commit with parameter true if the synchronization with the server is successful 
                //and with parameter false if the synchronization failed.
                // you can pass additional argument to the commit callback which represents the new ID if it is generated from a DB.
                
                commit(true);
            },
            deleterow: function (rowid, commit) {
                // synchronize with the server - send delete command
                // call commit with parameter true if the synchronization with the server is successful 
                //and with parameter false if the synchronization failed.
                
                
                commit(true);
            },
            updaterow: function (rowid, newdata, commit) {
                // synchronize with the server - send update command
                // call commit with parameter true if the synchronization with the server is successful 
                // and with parameter false if the synchronization failed.
                
                commit(true);
            }
        };
        var dataAdapter = new $.jqx.dataAdapter(source);
           
        // initialize jqxGrid
        $("#medicalChargeGrid").jqxGrid(
        {
            width: '100%',
            height: '76%',
            source: dataAdapter,
            showtoolbar: true,
            editable: true,
            selectionmode: 'singlerow',
            editmode: 'selectedrow',
            columns: [
                { text: '검사코드', datafield: 'INSPECTION_CODE', width: 80,
              	 	 validation: function (cell, value) {
              	 		 if( value == null || value == 'undefined' || value == ''){
              	 			 return {result:false, message: "검사코드를 꼭 입력하세요."};
              	 		 }
              	 		
                        return true;
                    }
                },
                { text: '검사명', datafield: 'INSPECTION_NAME', width: 300 },
                { text: '검사치료 구분', datafield: 'TREAT_DVS_CD', displayfield:'TREAT_DVS_NM', width: 80, columntype: 'dropdownlist',
              	  		createeditor: function (row, value, editor) {
                        	editor.jqxDropDownList({ source: treatAdapter, displayMember: 'label', valueMember: 'value' });
                    	}
                },
                { text: '비고', datafield: 'REMARK'},
                { text: '수가(원)', datafield: 'CHARGE', width: 100, cellsalign: 'right', cellsformat: 'd',columntype: 'numberinput',
              	 	validation: function (cell, value) {
                        if (value < 0 || value > 5000000) {
                            return { result: false, message: "Charge should be in the 0-3,000,000 interval" };
                        }
                        return true;
                    },
                    createeditor: function (row, cellvalue, editor) {
                        editor.jqxNumberInput({ decimalDigits: 0, digits: 7 });
                    }
                }] ,
            rendertoolbar: function (toolbar) {
                var me = this;
                var container = $("<div style='margin: 5px;'></div>");
                toolbar.append(container);
                container.append('<input id="addrowbutton" type="button" value="행추가" />');
                container.append('<input style="margin-left: 5px;" id="deleterowbutton" type="button" value="선택행 삭제" />');
                container.append('<input style="margin-left: 5px;" id="updaterowbutton" type="button" value="선택행 수정" />');
               // container.append('<input style="margin-left: 5px;" id="searchButton" type="button" value="조회" />');
              
                $("#addrowbutton").jqxButton();
                $("#deleterowbutton").jqxButton();
                $("#updaterowbutton").jqxButton();
               // $("#searchButton").jqxButton();  // 조회버튼
               
                /* search button click 
                $("#searchButton").on('click', function () {
					// do nothing
                });
                */
                // update row.
                $("#updaterowbutton").on('click', function () {
                    var selectedrowindex = $("#medicalChargeGrid").jqxGrid('getselectedrowindex');
                    var rowscount = $("#medicalChargeGrid").jqxGrid('getdatainformation').rowscount;
             
                    if (selectedrowindex >= 0 && selectedrowindex < rowscount) {
                        //var id = $("#medicalChargeGrid").jqxGrid('getrowid', selectedrowindex);
                        //var commit = $("#medicalChargeGrid").jqxGrid('updaterow', id, datarow);
                        //$("#medicalChargeGrid").jqxGrid('ensurerowvisible', selectedrowindex);
                    	    var rowData = $("#medicalChargeGrid").jqxGrid('getRowData', selectedrowindex);
                        
                        $.ajax({
	        				    url: 'mergeMedicalCharge.do',
	        				    async: true, 
	        				    type: 'POST',
	        				    dataType: 'json',
	        				    data:{
	        				    		'inspectionCode' : rowData.INSPECTION_CODE ,
	        				    		'inspectionName' : rowData.INSPECTION_NAME ,
	        				    		'treatDvsCd' : rowData.TREAT_DVS_CD ,
	        				    		'remark' : rowData.REMARK ,
	        				    		'charge' : rowData.CHARGE,
	        				    		'createUsrId': rowData.CREATE_USR_ID,
	        				    		'createDt': rowData.CREATE_DT ,
	        				    		'updateUsrId': rowData.UPDATE_USR_ID ,
	        				    		'updateDt': rowData.UPDATE_DT
	        				    },
	        				    beforeSend: function(jqXHR) {
	        				    },
	        				    success: function(data) {
	        				    		alert('등록/수정 되었습니다.');
	        				    		$('#medicalChargeGrid').jqxGrid('updatebounddata');
	        				    },
	        				    error: function(data) {
	        				    	    alert('등록/수정에 실패했습니다.');
	        				    },
	        				    complete: function(jqXHR) {
	        				    }
	        				});	   
                    
                    }
                    
                });
                
                // create new row.
                $("#addrowbutton").on('click', function () {
                    var datarow = generaterow();
                    var commit = $("#medicalChargeGrid").jqxGrid('addrow', null, datarow);
                });
                
                // delete row.
                $("#deleterowbutton").on('click', function () {
                    var selectedrowindex = $("#medicalChargeGrid").jqxGrid('getselectedrowindex');
                    var rowscount = $("#medicalChargeGrid").jqxGrid('getdatainformation').rowscount;
                    if (selectedrowindex >= 0 && selectedrowindex < rowscount) {
                        var id = $("#medicalChargeGrid").jqxGrid('getrowid', selectedrowindex);
                        var commit = $("#medicalChargeGrid").jqxGrid('deleterow', id);
                    }
                });
            }
        }); 
       
	});
	
	// 스케쥴 관리 메인화면으로 이동 
	function fn_goMain(){
		window.location.href ='login.do';
	}
	
	// 수입 관리 화면으로 이동 
	function fn_moveImcoming(){
		window.location.href = 'incomeView.do';
	}
  </script>
</body>

</html>
