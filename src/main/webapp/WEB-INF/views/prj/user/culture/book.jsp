<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
#filter {
	position: absolute;
	width: 320px;
	height: 180px;
	background: black;
	transition: all 0.3s ease-in-out;
	opacity: 0;
}

#filter:hover {
	opacity: 0.5;
}

a:hover {
	cursor: pointer;
	text-decoration: none;
}

td {
	height: 180px;
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
				<button data-toggle="modal" data-target="#login"
					style="width: 80px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;">${userID}로그인</button>
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
			<div style="float: left; margin-right: 5%; color: white">
				환영합니다. ${userID}님</div>

			<c:if test="${userID eq 'admin'}">
				<div style="float: left;">
					<button onclick="function(){location.href='../admin/home'}"
						style="width: 90px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;">관리자페이지</button>
				</div>
			</c:if>

			<div style="float: left;">
				<button onclick="logout()"
					style="width: 80px; height: 30px; background-color: #e6a756; border: 0; border-radius: 5px;">로그아웃</button>
			</div>

		</div>
	</c:if>


	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav"
		data-spy="affix" data-offset-top="197">
		<div class="container" style="margin-left: 490px;">
			
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
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/pjr/user/geocode">Map</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="/uri/prj/user/architectkim">architect</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="academy.html"
						data-toggle="dropdown">Commnuity</a>
						<ul class="dropdown-menu" style="position:absolute; left:861px;background:rgba(47, 23, 15, 0.9);">
							<li onmouseover="{document.querySelectorAll('.fontblack')[0].style.color='rgba(47, 23, 15, 0.9)';}"onmouseleave="{document.querySelectorAll('.fontblacka')[0].style.color='rgba(255,255,255,.7)';}"><a class="fontblacka" href="/uri/prj/user/community/recommend" style="font-size:3rem;color: rgba(255,255,255,.7);" >Recommend</a></li>
							<li onmouseover="{document.querySelectorAll('.fontblack')[1].style.color='rgba(47, 23, 15, 0.9)';}"onmouseleave="{document.querySelectorAll('.fontblacka')[1].style.color='rgba(255,255,255,.7)';}"><a class="fontblacka" href="/uri/prj/user/community/usercommunity" style="font-size:3rem;color: rgba(255,255,255,.7);" >User Community</a></li>

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

	<section class="page-section cta" id="bookc">
		<div class="container"
			style="width: 2000px; margin-left: 50px; margin-right: 50px;">
			<div class="row" style="width: 1800px;">
				<div class="col-xl-12 mx-auto">
					<div class="cta-inner text-center rounded"
						style="background: rgba(126, 126, 126, 0.8);">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" style="width: 1500px; margin: auto;">
								<div class="item active">
									<div
										style="width: 70%; height: 900px; margin: auto; padding-top: 150px;">
										<div class="col-sm-3" style="position:relative;top:100px;">
											
										</div>
										<div class="col-sm-6">
											<button onclick="popup(1)" data-toggle="modal"
												data-target="#firstBook">
												<img
													src="https://bookthumb-phinf.pstatic.net/cover/061/825/06182581.jpg?udate=20150723"
													style="width: 400;">
											</button>
										</div>
										<div class="col-sm-3" style="position:relative;top:100px;">
											
										</div>
									</div>
								</div>

								<div class="item">
									<div
										style="width: 70%; height: 900px; margin: auto; padding-top: 150px;">
										<div class="col-sm-3">
											
										</div>
										<div class="col-sm-6">
											<a onclick="popup(2)"data-toggle="modal"
												data-target="#firstBook"><img
												src="https://bookthumb-phinf.pstatic.net/cover/069/774/06977419.jpg?udate=20170419"
												style="width: 400;"></a>
										</div>
										<div class="col-sm-3">
											
										</div>
									</div>
								</div>

								<div class="item">
									<div
										style="width: 70%; height: 900px; margin: auto; padding-top: 150px;">
										<div class="col-sm-3">
											
										</div>
										<div class="col-sm-6"data-toggle="modal"
												data-target="#firstBook">
											<a onclick="popup(3)"><img
												src="https://bookthumb-phinf.pstatic.net/cover/084/985/08498556.jpg?udate=20150716"
												style="width: 400;"></a>
										</div>
										<div class="col-sm-3">
											
										</div>
									</div>
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
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

	<!-- out of screen -->

	<!-- Modal -->
	<div class="modal fade" id="firstBook" role="dialog">
		<div class="modal-dialog" >

			<!-- Modal content-->
			<div class="modal-content" style="position:relative; top:100px; width:700px;">
				<div class="modal-header">
					
					<h4 class="modal-title"style="letter-spacing:-1px;padding:5px;"></h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" style="padding:15px;">
					<div class="bthumb"></div>
					<p>Some text in the modal.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>



	<!-- Bootstrap core JavaScript -->
	<script src="${resPath}/user/vendor/jquery/jquery.min.js"></script>
	<script
		src="${resPath}/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

<!-- Script to highlight the active date in the hours list -->
<script src="${resPath}/user/js/basic.js"></script>
<script>
var title = document.querySelector('.modal-title');
var body = document.querySelector('.modal-body');



function popup(i){
	au.send({
		url : '/gmjbook/'+i,
		method : 'GET',
		success : function(res) {
			res = JSON.parse(res);
			console.log('송신완료');
			if(title.innerHTML!=null){
				title.innerHTML='';
				body.innerHTML='';
			}
			title.insertAdjacentHTML('afterbegin',res.gmjbooktitle);
			body.insertAdjacentHTML('beforeend',res.gmjbookdesc);
			body.insertAdjacentHTML('afterbegin','<img src="'+res.gmjbookthumb+'" style="border:1px solid grey;float:right;margin:10px;" width="200px;">');
			
		}
	})
}
	
</script>

</html>
