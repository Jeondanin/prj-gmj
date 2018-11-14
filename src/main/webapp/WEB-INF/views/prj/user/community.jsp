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
#pageul li {
	float: left;
	margin: 0 10px;
	font-size: 20px;
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
						<div id="paging"
							style="position: relative; z-index: 10; float: left"></div>
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
	var boardbody = document.querySelector('#boardbody');
	var paging_here = document.querySelector('#paging_here');
	console.log(paging_here);
	var paging = document.querySelector('#paging');
	var totalCnt;
	var groupcnt;//몇개씩 보기. 위에서 설정할 수 있는 값이라고. 

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
				//paging를 끼워넣자.
				/* var html='<ul id="pageul"style="list-style:none;">'
				html +='<li>1</li>'
					html +='<li>2</li>'
				html+='</ul>';
				
				paging.insertAdjacentHTML('beforeend',html);  
				 */
			}
		})
	}
	function showPaging2(totalCnt, totalPage) {
		au
				.send({
					url : '/gmjcboard',
					method : 'GET',
					success : function(res) {
						res = JSON.parse(res);
						console.log(totalPage);

						var html2 = '<ul id="pageul"style="list-style:none;">';

						for (var j = 1; j <= totalPage; j++) {
							var limitFNum = totalCnt - (j - 1) * 10;
							var limitLNum = (limitFNum - 1) - 10;
							if (limitLNum < 0) {
								limitLNum = -1;
							}
					//하나의 페이지에 들어갈 내용을 만들어놓음 .
							for (var i = limitFNum - 1; i > limitLNum; i--) {

								var html = '<tr class="board'+j+'"><td>'
										+ res[i].gmjcboardno + '</td><td>'
										+ res[i].gmjcboardtitle + '</td><td>'
										+ res[i].gmjusername + '</td><td>'
										+ res[i].credat + '</td><td>'
										+ res[i].gmjcboardcnt + '</td></tr>';

								boardbody.insertAdjacentHTML('beforeend', html);
							}
							if (j < 6) {
								if(j==1){
									html2 += '<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer;" id="paging selected">'
										+ j + '</div></li>'
								}else if(j%5==0){
									html2 += '<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer;" id="paging">'
										+ j + '</div></li>'
									html2+='<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer;">&gt;&gt;</div></li>';	
								}else{
									html2 += '<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer;">'
									+ j + '</div></li>';
								}
								
								
							} else if(j>=6) {
								if(j%5==1){
									html2+= '<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer; display:none;">&lt;&lt;</div></li>';
									html2 += '<li><div  class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer; display:none;">'
									+ j + '</div></li>';
								}else if(j%5==0){
									html2 += '<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer; display:none;">'
									+ j + '</div></li>';
									html2+='<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer; display:none;">&gt;&gt;</div></li>';
								}else{
									html2 += '<li><div class="paging paginggroup'+Math.ceil(j/5)+'" onclick="pageSelected(event)" style="cursor:pointer; display:none;">'
									+ j + '</div></li>';
								}
								
							}

						}

						html2 += '</ul>';
						paging.insertAdjacentHTML('beforeend', html2);
						
						var contents = document.querySelectorAll('.board'+1);
						var html3 = '';
						for (var i = 0; i < contents.length; i++) {
							html3 += contents[i].outerHTML;
						}
						console.log(287);
						paging_here.insertAdjacentHTML('beforeend',html3)
						
						

					}
				})
	}

	//페이지 네비게이션과 페이지 연동하는 부분.
	function pageSelected(e) {
		
		
		var changeall = document.querySelectorAll('#pageul li .paging');
		
		while (paging_here.hasChildNodes()) {
			console.log(paging_here);
			paging_here.removeChild(paging_here.firstChild);
			console.log(304);
		}
		if (e.target.innerHTML >= 0) {
			var contents = document.querySelectorAll('.board'+e.target.innerHTML);
			
			var contents = document.querySelectorAll('.board'+1);
			//클릭하면 id가 변화하는 부분.이벤트 타겟 과 그것이 포함되는 전체영역을 잡아서 함. 	
			console.log('296');
			console.log('changeall은' +changeall);
			console.log(changeall);
			for (var i = 0; i < changeall.length; i++) {
				changeall[i].setAttribute('id', 'paging');
			
			}
			e.target.setAttribute('id', 'paging_selected');
			
			var html = '';
			for (var i = 0; i < contents.length; i++) {
				html += contents[i].outerHTML;
			}
			paging_here.innerHTML = html;

		} else {
			console.log(e.target.innerHTML);
			//전에 있는 애들은 display:none으로하고 << 앞에 있는 애들 >> 만들기
			pagingV(changeall,e);

		}

	}
	
	//페이지 네비게이션 설정 
	function pagingV(changeall,e) {
		var pagings = document.querySelector('#paging_selected');

		/*  for(var i=5;i<changeall.length;i++){
			 changeall[i].style.display="none";
		  } */

		console.log(pagings);
		console.log(pagings.innerHTML);
		var big =e.target.innerHTML;
		console.log(big);
		if (big=='&gt;&gt;') {
			var upgrade = Math.ceil(pagings.innerHTML/5)+1;
			var currentgrade = Math.ceil(pagings.innerHTML/5);
			var upPage = document.querySelectorAll('.paginggroup'+upgrade);
			var currentPage = document.querySelectorAll('.paginggroup'+currentgrade);
			console.log(currentPage);
			for(var i=0;i<currentPage.length;i++){
				console.log('downpage'+i);
				currentPage[i].style.display="none";
			}
			for(var i=0;i<upPage.length;i++){
				console.log('upPage'+i);
				upPage[i].style.display="inline";
			}	
			
			console.log(upPage);
			
			console.log(Math.ceil(pagings.innerHTML/5)+1);
			
		}
		if(big=='&lt;&lt;'){
			var downgrade = Math.ceil(pagings.innerHTML/5)-1;
			var currentgrade = Math.ceil(pagings.innerHTML/5);
			var downPage = document.querySelectorAll('.paginggroup'+downgrade);
			var currentPage = document.querySelectorAll('.paginggroup'+currentgrade);
			console.log(currentPage);
			for(var i=0;i<currentPage.length;i++){
				console.log('downpage'+i);
				currentPage[i].style.display="none";
			}
			for(var i=0;i<downPage.length;i++){
				console.log('downPage'+i);
				downPage[i].style.display="inline";
			}	
			
			console.log(downPage);
			
		
		}

	}
</script>

</html>
