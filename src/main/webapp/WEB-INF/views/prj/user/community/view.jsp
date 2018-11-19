<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>GMJ</title>

<!-- Bootstrap core CSS -->
<link href="${resPath}/user/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom styles for this template -->
<link href="${resPath}/user/css/business-casual.min.css"
	rel="stylesheet">
<style>
.white{
background:#fff;
opacity:0.97;

}

.viewGmjcboard{
padding:20px;
width:700px;
}
.viewline{
margin:5rem 5rem 2rem 5rem;
border:1px solid #ddd;

}
.viewunderline{
font-family: 'Nanum Gothic' , 'Malgun Gothic' , 'Dotum' , 'Apple SD Gothic Neo', Helvetica, Sans-serif;

border-bottom:1px solid #ddd;
padding-bottom:10px;
letter-spacing: -1px;
color:#232323;

}

.viewonline{
padding:20px;
border-top:1px solid #ddd;
}
.viewcontentrow{
margin:50px;
}
.viewcontent{
min-height:500px;
color:#777;
}
.viewtitle{
font-weight:bold;
font-size:25px;
margin-bottom:2rem;
}
.reply{
background:#f5f5f5;
padding:2rem 6.5rem;
}


</style>
</head>

<body>

	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-lower">GMJ</span>
	</h1>
<c:if test="${empty userID}">
	<div style="position: absolute; left: 1500px; top: 5px; width: 200px;">
		<div style="float: left; margin-right: 5%;">
			<button data-toggle="modal"	data-target="#login"
				style="width: 80px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;">로그인</button>
		</div>
		<div style="float: left;">
			<button
				style="width: 80px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;"
				data-toggle="modal" data-target="#signup">회원가입</button>
		</div>
	</div>
	</c:if>
		<c:if test="${!empty userID}">
	<div style="position: absolute; left: 1500px; top: 5px; width: 200px;">
		<div style="float: left; margin-right: 5%; color:white">
			환영합니다. ${userID}님  
		</div>
		<c:if test="${userID eq 'admin'}">
		<button onclick="function(){location.href='../admin/home'}"
				style="width: 80px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;"
				>관리자페이지 가기</button>
		</c:if>
		<div style="float: left;">
			<button onclick="logout()"
				style="width: 80px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;"
				>로그아웃</button>
		</div>
	
	</div>
	</c:if>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav"
		data-spy="affix" data-offset-top="197">
		<div class="container">
			<div class="intro-button mx-auto">
				<div class="input-group"
					style="width: 250px; position: absolute; top: -74px; left: 1496px;">
					<input type="text" class="form-control" placeholder="Search for..."
						aria-label="Search" aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search" style="width: 500px;"></i>
						</button>
					</div>
				</div>
			</div>
			<a
				class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none"
				href="#">GMJ</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/Geocode">Map</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/architectkim">arhictect</a>
					</li>
					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/community">community</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/social media">social
							media</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/academy">Academy</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<section class="page-section about-heading" >
	
		<div class="container">
			<img class="img-fluid rounded about-heading-img mb-3 mb-lg-0"
				src="${resPath}/user/img/about.jpg" alt="">
			<div class="about-heading-content" style="height:800px">
			
				<div class="row" style="position:relative; top:-200px;">
					<div class="col-xl-9 col-lg-10 mx-auto">
						<div class="white rounded">
							
							<div class="container">
									
								<div class="viewGmjcboard viewline">
								
								</div>
							</div>
							
							<c:if test="${empty userID}">
							<div class="form-group reply" style="min-height:15rem;">
								<textarea class="form-control col-sm-10" id="replydesc" style="height:80px"></textarea>
								<input type="hidden" value="손님" id="userno">
								<button type="button" onclick="insertreply()"class="btn col-sm-2" style="margin-left:15px; height:80px;width:100px;">댓글등록</button>
							</div>
							</c:if>
							<c:if test="${!empty userID}">
							<div class="form-group reply" style="min-height:15rem;">
								<textarea class="form-control col-sm-10" id="replydesc" style="height:80px" value="${userNO}"></textarea>
								<input type="hidden" value="${userNO}" id="userno">
								<button type="button" onclick="insertreply()"class="btn col-sm-2" style="margin-left:15px; height:80px;width:100px;">댓글등록</button>
							</div>
							
							</c:if>
							<div class="replylist">
								
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- //////////////////////////////////리스트 부분  -->
		<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner text-center rounded">
						<table id="ztable" class="table table-hover"
							style="position: relative; z-index: 10;">
							<thead>
								<tr>
									<th class="col-sm-1">번호</th>
									<th class="col-sm-3">제목</th>
									<th class="col-sm-1">작성자</th>
									<th class="col-sm-2">작성일</th>
									<th class="col-sm-1">조회수</th>
								</tr>
							</thead>
							<tbody id="paging_here">
							
							
							</tbody>
							
							
							
							
							

						</table>
						<div id="paginationz" class="row">
						
						 </div>
						<div id="tabletools" style="position: relative; text-align:left;"  >
							<span></span>
							<button type="button" id="insertbtn" class="btn btn-default" style="boarder-radius:0.5rem;padding:1px;top: -.5rem;bottom: -.5rem;left: -.5rem;right: -.5rem;border:.2rem solid rgba(230,167,86,.9);"><div style="width:100%;background-color:rgba(230,167,86,.9);border-radius: .25rem;">글쓰기</div></button>
							
						</div>
						<div id="paging"
							style="width:100%;height:50px;position: relative; z-index: 10;"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	

	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright &copy; GMJ 2018</p>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="${resPath}/user/vendor/jquery/jquery.min.js"></script>
	<script
		src="${resPath}/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${resPath}/user/js/basic.js"></script>
<script src="${resPath}/user/js/board.js"></script>
<script>
var viewSection = document.querySelector('.viewGmjcboard');
var viewSectionhtml ='';
var url = decodeURIComponent(location.href);
var params = url.substring( url.indexOf('?')+1, url.length );
var no
var indexOfNo = params.indexOf('no=');
console.log(indexOfNo+' line : 174');
if(params.indexOf('&')!=-1){
	var indexOfAnd = params.indexOf('&');
	console.log(indexOfAnd+' line : 176');
	if(indexOfNo>indexOfAnd){
		  indexOfAnd = params.indexOf('&',indexOfAnd+1);
		  console.log(indexOfAnd);
		}
	no = params.substring(indexOfNo+3,indexOfAnd);
}else{
	no = params.substring(3,params.length); 
}

	
//실행순서는 는 리스트 켜지고 위에 내용켜지는 순서.

function viewBoard(){
	au.send({url:'/gmjcboard/'+no,
	method:'GET',
	success : function(res){
		res=JSON.parse(res);
		
		viewSectionhtml += '<form><div class="form-group">'
		
		viewSectionhtml += '<div class="row"><div class="col-sm-12 viewunderline"><div class="viewtitle">';
			viewSectionhtml += res.gmjcboardtitle+'</div><div>'+res.credat+'&nbsp;  |  &nbsp;'+res.gmjusername+'</div>';
			viewSectionhtml += '</div></div>'
		viewSectionhtml += '<div class="row viewcontentrow"><div class="col-sm-12 viewcontent">'
			viewSectionhtml += res.gmjcboarddesc;
			viewSectionhtml += '</div></div>'
		viewSectionhtml +='<div class="row"><div class="col-sm-12 viewonline">'
			viewSectionhtml += '가자'
		viewSectionhtml +='</div></div>'
		viewSectionhtml += '</div>'
		viewSectionhtml += '</form>'
		
		viewSection.insertAdjacentHTML('beforeend',viewSectionhtml);
		viewreply();
		
	}})
	
}

function insertreply(){
	var replydesc = document.querySelector('#replydesc').value;
	var userno =  document.querySelector('#userno').value;

	
	 au.send({url:'/gmjreply',
		method:'POST',
		param:JSON.stringify({"gmjcboardno":no,"gmjuserno":userno,"gmjreplydesc":replydesc}),
		success : function(res){
			res=JSON.parse(res);
			location.href=location.href;
		}
	}) 
	
}
function viewreply(){
	var replylist = document.querySelector('.replylist')
	var replylisthtml=''
	au.send({url:'/gmjreply/'+no,
		method:'GET',
		success : function(res){
			res=JSON.parse(res);
			console.log(res);
			for(var one of res){
				console.log(one.gmjreplydesc);
				replylisthtml+='<b>'+one.gmjusername+'</b>'
				replylisthtml+=one.gmjreplydesc+'<br>'
			}
			replylist.insertAdjacentHTML('afterbegin',replylisthtml);
		}
	}) 
	
	
}


</script>

</body>

<!-- 화면 위쪽 설정-->


</html>
