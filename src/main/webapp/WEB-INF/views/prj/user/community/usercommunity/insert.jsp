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
</style>
</head>

<body>

	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-lower">GMJ</span>
	</h1>

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
			<div class="intro-button mx-auto" style="margin-left: 490px;">
				
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
					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="loading">Map</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="architectkim">architect</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="academy.html"
						data-toggle="dropdown">Community</a>
						<ul class="dropdown-menu" style="position:absolute; left:861px;background:rgba(47, 23, 15, 0.9);">
							<li onmouseover="{document.querySelectorAll('.fontblacka')[0].style.color='rgba(47, 23, 15, 0.9)';}"onmouseleave="{document.querySelectorAll('.fontblacka')[0].style.color='rgba(255,255,255,.7)';}"><a class="fontblacka" href="/uri/prj/user/community/recommend" style="font-size:3rem;color: rgba(255,255,255,.7);" >Recommend</a></li>
							<li onmouseover="{document.querySelectorAll('.fontblacka')[1].style.color='rgba(47, 23, 15, 0.9)';}"onmouseleave="{document.querySelectorAll('.fontblacka')[1].style.color='rgba(255,255,255,.7)';}"><a class="fontblacka" href="/uri/prj/user/community/usercommunity" style="font-size:3rem;color: rgba(255,255,255,.7);" >User Community</a></li>

						</ul>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="/uri/prj/user/socialMedia">social media</a></li>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="academy.html"
						data-toggle="dropdown">Culture</a>
						<ul class="dropdown-menu" style="position:absolute; left:1220px;background:rgba(47, 23, 15, 0.9);">
							<li onmouseover="{document.querySelectorAll('.fontblack')[0].style.color='rgba(47, 23, 15, 0.9)';}"onmouseleave="{document.querySelectorAll('.fontblack')[0].style.color='rgba(255,255,255,.7)';}"><a class="fontblack" href="/uri/prj/user/culture/book" style="font-size:3rem;color: rgba(255,255,255,.7);" >Book</a></li>
							<li onmouseover="{document.querySelectorAll('.fontblack')[1].style.color='rgba(47, 23, 15, 0.9)';}"onmouseleave="{document.querySelectorAll('.fontblack')[1].style.color='rgba(255,255,255,.7)';}"><a class="fontblack" href="/uri/prj/user/culture/exhibition" style="font-size:3rem;color: rgba(255,255,255,.7);" >exhibition</a></li>

						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<section class="page-section about-heading">
	
		<div class="container">
			<img class="img-fluid rounded about-heading-img mb-3 mb-lg-0"
				src="${resPath}/user/img/about.jpg" alt="">
			<div class="about-heading-content">
			
				<div class="row" style="position:relative; top:-200px;">
					<div class="col-xl-9 col-lg-10 mx-auto">
						<div class="bg-faded rounded" style="height:100vh;">
							<p>
							<div class="container">
								<h2>Horizontal form</h2>
								<form class="form-horizontal" action="/gmjcboard"enctype="multipart/form-data" method="post" accept-charset="UTF-8">
									<div class="form-group">
										<label class="control-label col-sm-2" style="padding-left:0;">제목</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="title"
												name="gmjcboardtitle">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">내용</label>
										<div class="col-sm-9">
											<textarea id="content" name="gmjcboarddesc" cols="74" rows="8" style="border-radius:4px;border: 1px solid #ccc;"></textarea>
										</div>
									</div>
									<div class="form-group">
									<input type="hidden" name="MAX_FILE_SIZE" value="30000"  />
									<label class="control-label col-sm-2">업로드파일</label>
										<div class="col-sm-9">
										<input name="userfile" type="file" />
										</div>
									</div>  
									<div class="form-group">
					
										<div class="col-sm-9">
										 <input type="hidden" name="gmjclientno" value="${userNO}">
										</div>
									</div> 
									
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-default">Submit</button>
										</div>
									</div>
								</form>
							</div>
							</p>

							<p class="mb-0">
						
							</p>
						</div>
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


</body>

<!-- 화면 위쪽 설정-->

<script src="${resPath}/user/js/basic.js?V=5"></script>

</html>
