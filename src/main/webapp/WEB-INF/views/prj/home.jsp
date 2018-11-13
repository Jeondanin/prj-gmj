<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>건문지 홈</title>
<link rel="stylesheet" href="${resPath}/css/style.css"/>

</head>
<body>
    <div class="container">
        
            <div class="jumbotron">
                <div class="col-sm-3" style="font-size:30px;">건문지</div>
                <br>
                <p>환영합니다.</p>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">회원가입</button>
				<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#login" >로그인</button>
            </div>
             <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                  <div class="navbar-header">
                    <a class="navbar-brand" href="#">건문지</a>
                  </div>
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="#">홈</a></li>
                    <li><a href="/uri/prj/Geocode">지도</a></li>
                    <li><a href="#">건축</a></li>
                    <li><a href="#">커뮤니티</a></li>
                    <li><a href="#">소셜미디어</a></li>

                  </ul>
                  <form class="navbar-form navbar-left" action="/action_page.php">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Search" name="search">
                    </div>
                    <button type="submit" class="btn btn-default">검색</button>
                  </form>
                </div>
              </nav>
           

        
        
            
                
                
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                      </ol>
                  
                      <!-- Wrapper for slides -->
                      <div class="carousel-inner">
                        <div class="item active">
                          <img src="https://www.w3schools.com/booTsTrap/la.jpg" alt="Los Angeles" style="width:100%;">
                        </div>
                  
                        <div class="item">
                          <img src="https://www.w3schools.com/booTsTrap/chicago.jpg" alt="Chicago" style="width:100%;">
                        </div>
                      
                        <div class="item">
                          <img src="https://www.w3schools.com/booTsTrap/ny.jpg" alt="New york" style="width:100%;">
                        </div>
                      </div>
                  
                      <!-- Left and right controls -->
                      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                
               
        <div class="well well-lg" style="margin-top:20px;">
            <div class="section2" name="추천장소">
               
                <div style="font:30px bold;">가을엔 분위기 있게</div>
                <div class="rect"><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                <div class="rect"><img src="https://www.w3schools.com/booTsTrap/chicago.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                <div class="rect"><img src="https://www.w3schools.com/booTsTrap/ny.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>

            </div>
        </div>
        <div class="section3" name="지역별명소">
            <div class="col-sm-8" style="padding-left:0px;">
                <div class="well well-lg" style="height:40vh;">
                        <div>
                                <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#home">서울</a></li>
                                        <li><a data-toggle="tab" href="#menu1">경기</a></li>
                                        <li><a data-toggle="tab" href="#menu2">경상</a></li>
                                        <li><a data-toggle="tab" href="#menu3">전라</a></li>
                                        <li><a data-toggle="tab" href="#menu4">충청</a></li>
                                        <li><a data-toggle="tab" href="#menu5">강원</a></li>
                                        <li><a data-toggle="tab" href="#menu6">제주</a></li>
                                 </ul>
                                 <div class="tab-content">
                                        <div id="home" class="tab-pane fade in active">
                                            <div class="rect"><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                            <div class="rect"><img src="https://www.w3schools.com/booTsTrap/chicago.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                            <div class="rect"><img src="https://www.w3schools.com/booTsTrap/ny.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                        </div>
                                         <div id="menu1" class="tab-pane fade">
                                            <div class="rect"><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                              <div class="rect"><img src="https://www.w3schools.com/booTsTrap/chicago.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                              <div class="rect"><img src="https://www.w3schools.com/booTsTrap/ny.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                    </div>
                                    <div id="menu2" class="tab-pane fade">
                                        <div class="rect"><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                        <div class="rect"><img src="https://www.w3schools.com/booTsTrap/chicago.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                        <div class="rect"><img src="https://www.w3schools.com/booTsTrap/ny.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                    </div>
                                    <div id="menu3" class="tab-pane fade">
                                        <h3>Menu 3</h3>
                                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                        <div class="rect"><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                        <div class="rect"><img src="https://www.w3schools.com/booTsTrap/chicago.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                        <div class="rect"><img src="https://www.w3schools.com/booTsTrap/ny.jpg" class="img-rounded" alt="Cinque Terre" style="width:100%;height:100%;">가을엔 분위기 있게 [가산]빌딩숲 속 휴식처</div>
                                    </div>
                                    <div id="menu4" class="tab-pane fade">
                                        <h3>Menu 3</h3>
                                            <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                     </div>
                                    <div id="menu5" class="tab-pane fade">
                                        <h3>Menu 3</h3>
                                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                    </div>
                                    <div id="menu6" class="tab-pane fade">
                                        <h3>Menu 3</h3>
                                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                    </div>
                                </div>
                        </div>       
                </div>
            </div>
            <div class="col-sm-4" style="padding-right:0px;">
                
                <div class="well well-lg" style="height:40vh;">
                <div style="font:30px bold;">실시간트위터</div>
                    <div class="twcontent">내용</div>
                 </div>
                
            </div>
         </div>

                
            
        
            
                
            <div class="well well-lg" style="height:40vh; margin-top:20px">
                    <div class="section4" name="동영상">
                            <div style="font:30px bold;margin-bottom:10px">연관동영상</div>
                            
                                    <div class="col-sm-4" style="padding-right:0px;"><iframe width="300" height="180" src="https://www.youtube.com/embed/8yAsZt7rfgI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>산업실록</div>
                                    <div class="col-sm-4" style="padding-right:0px;"><iframe width="300" height="180" src="https://www.youtube.com/embed/9DJgJBaJvDA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>한국 현대건축의 백미 "삼일빌딩"</div>
                                    <div class="col-sm-4" style="padding-right:0px;"><iframe width="300" height="180" src="https://www.youtube.com/embed/eWaogtA9PNc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>르 꼬르뷔지에 - 빌라사보아 / 파리</div>
                        </div>
            </div>
            <div class="well well-lg" style="height:40vh; margin-top:20px">
                    <div style="font:30px bold">건축가</div>
                    <div class="col-sm-2"><img src="http://magazine.hankyung.com/magazinedata/images/photo/201210/d673d13500fe997b662b02af115d518f.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:150px;"></div>
                    <div class="col-sm-2" ><img src="http://photo.jtbc.joins.com/news/2015/07/17/20150717143205306.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:150px;"></div>
                    <div class="col-sm-2" ><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:100%;"></div>
                    <div class="col-sm-2" ><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:100%;"></div>
                    <div class="col-sm-2" ><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:100%;"></div>
                    <div class="col-sm-2" ><img src="https://www.w3schools.com/booTsTrap/la.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:100%;"></div>
                  
            </div>

            
                
                
            <div class="well well-lg" style="height:50vh; margin-top:20px">
                
                    <div class="col-sm-11" style="font:30px bold">건축 이야기</div>
                    <div class="col-sm-1"><button class="btn btn-default">더보기</button></div>
               
                
                    <div class="col-sm-4" style="margin-top:10px"><img src="http://t0.gstatic.com/images?q=tbn:ANd9GcQq-h_qP4eDSgfMiAqrEiCux7DD70QwD_0PzpIoiqpy0tx2AYtD" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:350px;"></div>
                    <div class="col-sm-4" style="margin-top:10px" ><img src="http://image.kyobobook.co.kr/images/book/large/056/l9788972120056.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:350px;"></div>
                    <div class="col-sm-4" style="margin-top:10px"><img src="http://t1.daumcdn.net/thumb/R155x225/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788990641526" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:350px;"></div>
                

            </div>

            <div class="well well-lg" style="height:50vh; margin-top:20px">
                
                    <div class="col-sm-11" style="font:30px bold">건축 교육</div>
                    <div class="col-sm-1"><button class="btn btn-default">더보기</button></div>
               
                
                    <div class="col-sm-4" style="margin-top:10px"><img src="http://t0.gstatic.com/images?q=tbn:ANd9GcQq-h_qP4eDSgfMiAqrEiCux7DD70QwD_0PzpIoiqpy0tx2AYtD" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:350px;"></div>
                    <div class="col-sm-4" style="margin-top:10px" ><img src="http://image.kyobobook.co.kr/images/book/large/056/l9788972120056.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:350px;"></div>
                    <div class="col-sm-4" style="margin-top:10px"><img src="http://t1.daumcdn.net/thumb/R155x225/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788990641526" class="img-thumbnail" alt="Cinque Terre" style="width:100%;height:350px;"></div>
                

            </div>
                
            
            
        </div>
        <div class="footer">
            나는 footer
        </div>
        <!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Modal Header</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input id="gmjuseremail"
									type="email" class="form-control" name="gmjuseremail"
									placeholder="이메일" required>
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input id="gmjuserpwd"
									type="password" class="form-control" name="gmjuserpwd"
									placeholder="비밀번호">
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input id="gmjuserpwdchk"
									type="password" class="form-control" name="gmjuserpwdchk"
									placeholder="비밀번호 확인">
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-pencil"></i></span> <input id="gmjusername"
									type="text" class="form-control" name="gmjusername"
									placeholder="이름">
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-phone"></i></span> <input id="gmjuserphone"
									type="text" class="form-control" name="gmjuserphone"
									placeholder="핸드폰 번호">
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-calendar"></i></span> <input
									id="gmjuserbirth" type="date" class="form-control"
									name="gmjuserbirth" placeholder="생년월일 8자 ex)900213">
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-heart"></i></span> 
									<div id="gmjusersex" style="padding: 6px 12px; font-size: 14px;height: 34px;border: 1px solid #ced4da;border-radius: .25rem;">
									<label class="radio-inline" >
									<input type="radio" name="optradio" value="남자">남
									</label> 
									<label class="radio-inline"> 
									<input type="radio" name="optradio" value="여자">녀
									</label>
									</div> 
									
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-stats"></i></span> <input
									id="gmjuseraddress" type="text" class="form-control"
									name="gmjuseraddress" placeholder="주소">
							</div>

							<br>
						
							
						</form>





					</div>
					<div class="modal-footer">
						<button id="sb" class="btn btn-default" onclick="submit()">제출</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
		<!-- Modal2 -->
		<div class="modal fade" id="login" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Modal Header</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input id="gmjuseremail"
									type="email" class="form-control" name="gmjuseremail"
									placeholder="이메일" required>
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input id="gmjuserpwd"
									type="password" class="form-control" name="gmjuserpwd"
									placeholder="비밀번호">
							</div>
							
						</form>

					</div>
					<div class="modal-footer">
						<button id="sb" class="btn btn-default" onclick="login()">로그인</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</div>

			</div>
	
	
	</div>
   
            
</body>


<script>
	var gmjuseremail =  document.querySelector('#gmjuseremail');
	var gmjuserpwd = document.querySelector('#gmjuseremail');
	var gmjusername =  document.querySelector('#gmjusername');
	var gmjuserphone =  document.querySelector('#gmjuserphone');
	var gmjuserbirth =  document.querySelector('#gmjuserbirth');
	var gmjusersexTest =  document.querySelectorAll('input[name="optradio"]');
	var gmjusersex;
	var gmjuseraddress =  document.querySelector('#gmjuseraddress');
	var data ={};
	
	
	function submit(){
		for(var i=0;i<2;i++){
			if(gmjusersexTest[i].checked){
				gmjusersex=gmjusersexTest[i];
			};
		}
		data['gmjuseremail']=gmjuseremail.value;
		data['gmjuserpwd']=gmjuserpwd.value;
		data['gmjusername']=gmjusername.value;
		data['gmjuserphone']=gmjuserphone.value;
		data['gmjuserbirth']=gmjuserbirth.value;
		data['gmjusersex']=gmjusersex.value;
		data['gmjuseraddress']=gmjuseraddress.value;
		var conf = {
				url:'/gmjclient/',
				method:'POST',
				param : JSON.stringify(data),
				success : function(res){
					alert(res);									
				}
		}
		au.send(conf);
	}
	
	function login(){
		data['gmjuseremail']=gmjuseremail.value;
		data['gmjuserpwd']=gmjuserpwd.value;
		var conf = {
				url:'/gmjclient/',
				method:'POST',
				param : JSON.stringify(data),
				success : function(res){
					alert(res);									
				}
		}
		alert('아직 데이터를 보내는 부분 구현 안됨au.send(conf); ');
	}
	</script>


</html>