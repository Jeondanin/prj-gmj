<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

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
#pageul{
text-align:center;
position:relative;
left:150px;
}
#pageul li {
	float: left;
	margin: 0 10px;
	font-size: 20px;
}
#paging_selected{
font-weight:bold;
}

</style>
</head>

<body>

	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-lower">GMJ</span>
	</h1>

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
						class="nav-link text-uppercase text-expanded" href="home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="ma">Map</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="products">construct</a>
					</li>
					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="community">community</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="social media">social
							media</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="academy">Academy</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner text-center rounded">
						<table id="ztable" class="table table-hover"
							style="position: relative; z-index: 10;">
							<thead>
								<tr class="cmt">
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody id="paging_here">

							</tbody>
							<tbody id="boardbody" style="display: none;">
								<!--  <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2018-11-13</td>
                    <td>0</td>
                  </tr> -->
							</tbody>

						</table>
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

	<section class="page-section about-heading">
		<div class="container">
			<img class="img-fluid rounded about-heading-img mb-3 mb-lg-0"
				src="${resPath}/user/img/about.jpg" alt="">
			<div class="about-heading-content">
				<div class="row">
					<div class="col-xl-9 col-lg-10 mx-auto">
						<div class="bg-faded rounded p-5">
							<h2 class="section-heading mb-4">
								<span class="section-heading-upper">Strong Coffee, Strong
									Roots</span> <span class="section-heading-lower">About Our Cafe</span>
							</h2>
							<p>Founded in 1987 by the Hernandez brothers, our
								establishment has been serving up rich coffee sourced from
								artisan farmers in various regions of South and Central America.
								We are dedicated to travelling the world, finding the best
								coffee, and bringing back to you here in our cafe.</p>
							<p class="mb-0">
								We guarantee that you will fall in <em>lust</em> with our
								decadent blends the moment you walk inside until you finish your
								last sip. Join us for your daily routine, an outing with
								friends, or simply just to enjoy some alone time.
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
	<script src="${resPath}/user/vendor/bootstrap/js/pagination.js"></script>

</body>

<!-- Script to highlight the active date in the hours list -->
<script>
	var boardbody = document.querySelector('#boardbody');
	var paging_here = document.querySelector('#paging_here');
	console.log(paging_here);
	var paging = document.querySelector('#paging');
	var totalCnt;
	var groupcnt;//몇개씩 보기. 위에서 설정할 수 있는 값이라고. 
	var currentpage=1;

	function doInit() {
		showPaging();
	}
	window.addEventListener('load', doInit);

	function showPaging() {
		au.send({
			url : '/gmjcboardz',
			method : 'GET',
			success : function(res) {
				res = JSON.parse(res);
				totalCnt = res.totalCnt;
				totalPage = res.totalPage;
				showPaging2(totalCnt, totalPage)
			
			}
		})
	}
	
	
	///아래부터 삽입
	document.querySelector('#insertbtn').addEventListener('click',insertContent);
	function insertContent(){
		location.href="/uri/prj/user/communityInsert";
	}
	
	
</script>

</html>
