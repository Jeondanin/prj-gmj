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
a{
cursor:pointer;}
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
						class="nav-link text-uppercase text-expanded" href="social media">media</a></li>
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


</body>

<!-- Script to highlight the active date in the hours list -->
<script>
	var pagination = document.querySelector('#paginationz');
	var paging_here = document.querySelector('#paging_here');
	console.log(paging_here);
	var paging = document.querySelector('#paging');
	var totalCnt;
	var groupcnt;//몇개씩 보기. 위에서 설정할 수 있는 값이라고. 
	var currentpage=1;
	
	var block =5;
	var init=1;
	function doInit() {
		showPaging();
		
	}
	window.addEventListener('load', doInit);

	function showPaging() {
		au.send({
			url : '/gmjcboardcnt',
			method : 'GET',
			success : function(res) {
				res = JSON.parse(res);
				totalCnt = res.totalCnt;
				totalPage = res.totalPage;
				showPaging2(totalCnt,totalPage)
				showList(1);		
			}
		})
	}
	//total cnt 122, totalPage 13페이지 
	function showPaging2(totalCnt,totalPage,init=1,block=5){
		console.log('217:'+init)
		pagination.innerHTML='';
		
		var fin = init+block-1
		if(totalPage-init<5){
			console.log('222'+init)
			fin=totalPage;
			console.log(fin);
		}
		var html2='';
		
		for (var j = init; j <=fin; j++) {
	
				if(j%block==1){
					if(j==1){
					html2 += '<div class="col-sm-1"> </div><div class="col-sm-1"><a onclick="showList('+j+')">'+j+'</a></div></div>'
					}else{
						html2 += '<div class="col-sm-1"><a onclick="changePn(totalCnt,totalPage,'+j+',block)">&lt;&lt;</a></div><div class="col-sm-1"><a onclick="showList('+j+')">'+j+'</a></div>'	
					}
				}else if(j%block==0){
					if(j==totalPage){
						html2 += '<div class="col-sm-1"><a onclick="showList('+j+')">'+j+'</a></div><div class="col-sm-1"></div>'		
					}else{
						html2 += '<div class="col-sm-1"><a onclick="showList('+j+')">'+j+'</a></div><div class="col-sm-1"><a onclick="changePn(totalCnt,totalPage,'+j+',block)">&gt;&gt;</a></div>'	
					}	
				}else{
					console.log(j);
					html2 += '<div class="col-sm-1"><a onclick="showList('+j+')">'+j+'</a></div>';
				}	

		};
		
		pagination.insertAdjacentHTML('beforeend', html2);
		
	}
	
	function showList(number){
		var html='';
		au.send({
			url : '/gmjcboarduser?page='+number,
			method : 'GET',
			success : function(res) {
				res = JSON.parse(res);
				for(var i=0;i<10;i++){
					if(res[i]!=null){
						html += '<tr class="board"><td>'
							+ res[i].gmjcboardno + '</td><td>'
							+ res[i].gmjcboardtitle + '</td><td>'
							+ res[i].gmjusername + '</td><td>'
							+ res[i].credat + '</td><td>'
							+ res[i].gmjcboardcnt + '</td></tr>';
					}
				}
				paging_here.innerHTML='';
				paging_here.insertAdjacentHTML('afterbegin', html);
				bodify(number);
			}
		})
		
	}
	function bodify(number){
		var SetNo= document.querySelectorAll('#paginationz .col-sm-1 a');
		
		for(var k of SetNo ){
			k.style.fontWeight="normal";
			var no = k.innerHTML;
			if(no==number){
				k.style.fontWeight="bold";
				return;	
			}else{
				
			}
		}
	
		
	}
	
	function changePn(totalCnt,totalPage,number,block){
		if(number%block==1){
			showPaging2(totalCnt,totalPage,parseFloat(number-block));
			showList(parseFloat(number-1));
		}else{
			showPaging2(totalCnt,totalPage,parseFloat(number+1));
			showList(parseFloat(number+1));
		}
		
	}
	
	///아래부터 삽입
	document.querySelector('#insertbtn').addEventListener('click',insertContent);
	function insertContent(){
		location.href="/uri/prj/user/communityInsert";
	}
	
	
</script>

</html>
