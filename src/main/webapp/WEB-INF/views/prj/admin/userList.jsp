<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>건문지 - 관리자용 페이지</title>
<!--dhtmlx-->
<link href="${resPath}/vendor/codebase/dhtmlx.css" rel="stylesheet">
<link href="${resPath}/vendor/skins/skyblue/dhtmlx.css" rel="stylesheet">
<!-- dhtmlspreadsheet -->
<link rel="stylesheet" href="${resPath}/spreadsheet_gpl/codebase/spreadsheet.css?v=3.0.1">

<!-- Bootstrap Core CSS -->
<link href="${resPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- MetisMenu CSS -->
<link href="${resPath}/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${resPath}/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="${resPath}/vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${resPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/uri/prj/admin/home">건문지</a>
			</div>
			<!-- /.navbar-header -->

			
					
			
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="/uri/prj/admin/home"><i class="fa fa-dashboard fa-fw"></i>홈</a>
						</li>
						<li><a href="/uri/prj/admin/map"><i class="fa fa-edit fa-fw"></i> 지도 관리</a></li>
						<li><a href="/uri/prj/admin/userList"><i class="fa fa-edit fa-fw"></i> 회원 관리</a></li>
						
							
								<li><a href="/uri/prj/admin/adboard"><i class="fa fa-edit fa-fw"></i>게시물 관리</a></li>
								<li><a href="/uri/prj/admin/commentboard"><i class="fa fa-edit fa-fw"></i>댓글 관리</a></li>
					
						<li><a href="/uri/prj/admin/Bboard"><i class="fa fa-table fa-fw"></i>추천글
								관리</a></li>
						<li><a href="/uri/prj/admin/Vboard"><i class="fa fa-table fa-fw"></i>영상게시판
								관리</a></li>
						<li><a href="/uri/prj/admin/Book"><i class="fa fa-table fa-fw"></i>책
								관리</a></li>
					
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
<!-- 여기만 건들여 -->
		<div id="page-wrapper">
		<h1>회원관리</h1> 
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#home">기본</a></li>
				<li><a data-toggle="tab" href="#menu1">[유료] 스프레드시트</a></li>
			</ul>

			<div class="tab-content">
				<div id="home" class="tab-pane fade in active">
					<div id="rDivUser" style="width: 70vw; height: 45vh"></div>
					<div id="pagingbox"></div>
					<div id="recInfoArea"></div>
				</div>
				<div id="menu1" class="tab-pane fade">
					<div style="width:1000px; height:600px;"id="box"></div>
					<button onclick="saveAndSend()">저장</button>
				</div>
			
			</div>
	
	</div>
	<!-- /#wrapper -->
	<script>
	var dxGrid;

	function doInit() {

		dxGrid = new dhtmlXGridObject('rDivUser');

		dxGrid
				.setHeader('번호,유저아이디,비밀번호,이름,핸드폰번호,생년월일,성별,주소,생성한날짜,수정한날짜,수정,삭제');

		dxGrid
				.setColumnIds('gmjuserno,gmjuseremail,gmjuserpwd,gmjusername,gmjuserphone,gmjuserbirth,gmjusersex,gmjuseraddress,credat,moddat,edit,delete');
		dxGrid.setColTypes('ro,ed,ed,ed,ed,ed,ed,ed,ed,ed,img,img');
		dxGrid.enableAutoWidth(true);
		dxGrid.init();
		au.send({
			url : '/gmjclient',
			method : 'GET',
			success : function(res) {
				res = JSON.parse(res);
				console.log(res);
				dxGrid.parse(res, 'js');
				insertImg();
				spreadsheetz();
			}
		})

	}

	window.addEventListener('load', doInit);
	</script>

	<!-- jQuery -->
	<script src="${resPath}/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${resPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${resPath}/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${resPath}/dist/js/sb-admin-2.js"></script>
	<!--dhtmlx-->
	<script src="${resPath}/vendor/codebase/dhtmlx.js"></script>
	<script scr="${resPath}/vendor/codebase/dhtmlx.d.tx"></script>

	<!-- DataTables JavaScript -->
	<script src="${resPath}/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${resPath}/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="${resPath}/vendor/datatables-responsive/dataTables.responsive.js"></script>


	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script type="text/javascript" src="${resPath}/spreadsheet_gpl/codebase/spreadsheet.js?v=3.0.1"></script>
	<script type="text/javascript" src="${resPath}/user/js/spreadsheet-client.js?v=21"></script>
	
	

	<!--이게 있어야 들어가는..-->
	<script>
	var hanglePattern=/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;

		function insertImg() {
			var tnwjd = document.querySelectorAll('td img');

			for (var i = 0; i < tnwjd.length; i++) {

				if (i % 2 == 0) {
					tnwjd[i].setAttribute("class", "수정");
					tnwjd[i].setAttribute("src", "${resPath}/img/down.png");
				} else {
					tnwjd[i].setAttribute("class", "삭제");
					tnwjd[i].setAttribute("src", "${resPath}/img/del.jpg");
				}
			}
			var tnwjd1 = document.getElementsByClassName('수정');
			for (var i = 0; i < tnwjd1.length; i++) {
				tnwjd1[i].addEventListener('click', findFactor);
			}
			var tkrwp1 = document.getElementsByClassName('삭제');
			for (var i = 0; i < tnwjd1.length; i++) {
				tkrwp1[i].addEventListener('click', findFactor2);
			}
		}
		function findFactor(target) {
			keys = new Array();
			for (var i = 0; i < 10; i++) { //i<3의 3은 이미지 앞에 있는 항목 개수.
			//	console.log(target.path[2].childNodes[i].innerHTML);//target:누르는 그림, path[2]:target을 기준으로 tr전체영역,
				keys[i] = target.path[2].childNodes[i].innerHTML;
			}
			//alert('눌럿다.');
			checkvalue(keys);
		}

		function findFactor2(target) {
			alert('눌렀다.');
			keys = new Array();
			for (var i = 0; i < 10; i++) { //i<3의 3은 이미지 앞에 있는 항목 개수.
			//	console.log(target.path[2].childNodes[i].innerHTML);//target:누르는 그림, path[2]:target을 기준으로 tr전체영역,
				keys[i] = target.path[2].childNodes[i].innerHTML;
			}
			uinum = keys[0];
			deleterow(uinum);
		}

		function checkvalue(keys) {
			//아래부분은 값을 확인.
			/* for (var i = 1; i < keys.length; i++) {

				if (keys[i].match(pattern) || keys[i].length < 2) {
					if (i != 5 || i != 0) {
						alert(keys[i] + '가 공백패턴또는 2글자 미만입니다.');
						return;
					}
				}
			} */
			if (keys[3].match(hanglePattern)) {
				
				alert('이름은 한글로 써야합니다.');
				return;
			}
			

			sendingToServer(keys);
		}
		
		function deleterow(uinum){
			var conf={
					url:'/gmjclient/'+uinum+'',
					method:'DELETE',
					success:function(res){
						res=JSON.parse(res);
						alert(res);
					}
				}
				if(confirm('이 데이터를 삭제하시겠습니까?')){
					au.send(conf);
					location.href = location.href;
				};
		}
		
		function sendingToServer(keys){
			alert('보내기전');
			conf={
					url:'/gmjclient',
					method:'PUT',
					param :JSON.stringify({gmjuserno:keys[0],gmjuserpwd:keys[2],gmjusername:keys[3],gmjuserphone:keys[4],gmjuserbirth:keys[5],gmjusersex:keys[6]}),
					success:function(res){
						res=JSON.parse(res);
						alert('바꼈다');
					}
				}	
				au.send(conf);
			location.href = location.href;
		}
		
		
		
		
		
		
		
		
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

</body>

</html>
