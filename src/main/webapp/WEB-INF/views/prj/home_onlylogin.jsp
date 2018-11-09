<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>Modal Example</h2>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">Open Modal</button>

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

	</div>
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
	
	</script>

</body>
</html>

