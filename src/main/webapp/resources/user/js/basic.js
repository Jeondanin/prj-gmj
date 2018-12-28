//공통 회원가입 / 로그인
	
	var gtsec ='<div class="modal fade" id="login" role="dialog">'+
	'<div class="modal-dialog">'+
	'<div class="modal-content">'+
	'<div class="modal-header">'+
	'<h4 class="modal-title">로그인</h4>'+
	'<button type="button" class="close" data-dismiss="modal">&times;</button>'+
		'</div>'+
		'<div class="modal-body">'+
			'<form>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>'+
				'<input id="logingmjuseremail" type="email" class="form-control" name="gmjuseremail" placeholder="이메일" required>'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> <input '+
						'id="logingmjuserpwd" type="password" class="form-control"'+
						'name="gmjuserpwd" placeholder="비밀번호">'+
				'</div>'+
			'</form>'+
		'</div>'+
		'<div class="modal-footer">'+
			'<button id="lg" class="btn btn-default" onclick="login()">로그인</button>'+
			'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
		'</div>'+
	'</div>'+
'</div>'+
'</div>'+
'<div class="modal fade" id="signup" role="dialog">'+
'<div class="modal-dialog">'+

	'<!-- Modal content-->'+
	'<div class="modal-content">'+
		'<div class="modal-header">'+
			'<h4 class="modal-title">회원가입</h4>'+
			'<button type="button" class="close" data-dismiss="modal">&times;</button>'+
		'</div>'+
		'<div class="modal-body">'+
			'<form>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> <input style="width:350px;" id="gmjuseremail"'+
						'type="email" class="form-control" name="gmjuseremail"'+
						'placeholder="이메일" required>'+
						'<span onclick="dupcheck()" class="btn btn-default" style="width:70px; margin-left:6px; padding:3px 6px;  height:30px;" >중복확인</span>'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> <input id="gmjuserpwd"'+
						'type="password" class="form-control" name="gmjuserpwd"'+
						'placeholder="비밀번호">'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i '+
						'class="glyphicon glyphicon-lock"></i></span> <input id="gmjuserpwdchk"'+
						'type="password" class="form-control" name="gmjuserpwdchk"'+
						'placeholder="비밀번호 확인">'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i '+
						'class="glyphicon glyphicon-pencil"></i></span> <input id="gmjusername"'+
						'type="text" class="form-control" name="gmjusername"'+
						'placeholder="이름">'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i '+
						'class="glyphicon glyphicon-phone"></i></span> <input id="gmjuserphone"'+
					'type="text" class="form-control" name="gmjuserphone"'+
						'placeholder="핸드폰 번호">'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i '+
						'class="glyphicon glyphicon-calendar"></i></span> <input '+
						'id="gmjuserbirth" type="date" class="form-control"'+
						'name="gmjuserbirth" placeholder="생년월일 8자 ex)900213">'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i '+
						'class="glyphicon glyphicon-heart"></i></span>'+
					'<div id="gmjusersex"'+
						'style="padding: 6px 12px; font-size: 14px; height: 34px; border: 1px solid #ced4da; border-radius: .25rem;">'+
						'<label class="radio-inline"> <input type="radio"'+
							'name="optradio" value="남자">남'+
						'</label> <label class="radio-inline"> <input type="radio"'+
							'name="optradio" value="여자">녀'+
						'</label>'+
					'</div>'+
				'</div>'+
				'<div class="input-group">'+
					'<span class="input-group-addon"><i '+
						'class="glyphicon glyphicon-stats"></i></span>' +
						'<div id="demo5" style="height:20px">'+										
						'<input type="hidden" class="postcodify_postcode5" style="width:50px; margin-left:30px; margin-top:20px;" disabled="disabled"/>'+
						'<div id="postcodify_search_button" style="background-color:#ffc985; cursor:pointer; border:1px solid lightgray; font-weight:600;">검색</div><br/>'+
						'</div>'+
						'<input class="postcodify_address" '+ 
						'id="gmjuseraddress" type="text" class="form-control"'+
						'name="gmjuseraddress" placeholder="주소" style="width:100%;">'+
						
					'</div>'+
					'<br>'+
			'</form>'+
		'</div>'+
		'<div class="modal-footer">'+
			'<button id="sb" class="btn btn-default" onclick="submit()" disabled>제출</button>'+
			'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
		'</div>'+
	'</div>'+

'</div>'+
'</div>'
//signup의 display가 block일때유효.



	console.log(document.querySelector('footer'));
	if(document.querySelector('footer')!=null){
		document.querySelector('footer').insertAdjacentHTML('afterend',gtsec);
		
		
	}
	
	
var logingmjuseremail =  document.querySelector('#logingmjuseremail');
	var logingmjuserpwd = document.querySelector('#logingmjuserpwd');
	var data ={};
	function login(){
		if(!logingmjuseremail.value.match(emailPattern)||blankPattern.test(logingmjuseremail.value)){
			alert('이메일을 확인하세요.');
			return;
		}
	
		console.log(logingmjuserpwd);
		if(logingmjuserpwd.value.length<8||logingmjuserpwd.value.length>16||blankPattern.test(logingmjuserpwd.value)){
			alert('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}
		if(!logingmjuserpwd.value.trim().match(pwdPattern)){	
			alert('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}	
		
		
		data['gmjuseremail']=logingmjuseremail.value;
		data['gmjuserpwd']=logingmjuserpwd.value;

		var conf = {
				url:'/gmjlogin/',
				method:'POST',
				param : JSON.stringify(data),
				success : function(res){
			
					if(res=='0'){
						alert('아이디와 비밀번호를 잘 확인하세요.');
					
					}else{
						
						location.href=location.href;
					}
					
					
					
				}
		}
		au.send(conf);
	}
	function logout(){
		var conf = {
				url:'/gmjlogout/',
				method:'GET',
				success : function(res){
					alert('로그아웃되셨습니다.');
					location.href=location.href;
				}
		}
		au.send(conf);
	}
	
	//중복처리, 회원가입용//
	var gmjuseremail =  document.querySelector('#gmjuseremail');
	var tmpEmail;
	var gmjuserpwd = document.querySelector('#gmjuserpwd');
	var gmjuserpwdchk = document.querySelector('#gmjuserpwdchk')
	var gmjusername =  document.querySelector('#gmjusername');
	var gmjuserphone =  document.getElementById('gmjuserphone');
	var gmjuserbirth =  document.querySelector('#gmjuserbirth');
	var gmjusersexTest =  document.querySelectorAll('input[name="optradio"]');
	var gmjusersex;
	var gmjuseraddress =  document.querySelector('#gmjuseraddress');
	var signupdata ={};
	
	var blankPattern = /[\s]/g;
	var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var pwdPattern =/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~,-])|([!,@,#,$,%,^,&,*,?,_,~,-].*[a-zA-Z0-9])/;
	var hanglePattern=/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
	if(document.getElementById('gmjuserphone')!=null){
		document.getElementById('gmjuserphone').addEventListener('keyup',adddash);
	}
	//중복체크만//
	function dupcheck(){
		if(!gmjuseremail.value.match(emailPattern)||blankPattern.test(gmjuseremail.value)){
			alert('이메일을 확인하세요.');
			return;
		}
		au.send({url:'/gmjclient/dupcheck',
			      method:'POST',
			      param:gmjuseremail.value,
			      success:function(res){
			    	  if(res==0){
			    		  alert('사용할 수 있는 아이디입니다.');
			    		  buttonabled();
			    		  tmpEmail=gmjuseremail.value;
			    	  }else{
			    		  alert('중복된 이메일입니다. 다른 것을 넣어주세요.');
			    		  return;
			    	  }
			      }	 	
		});
	}
	
	
	
	//중복체크 끝//
	
	

	
	
	var timeout = null;
	function adddash(e){
		clearTimeout(timeout);
	
		timeout = setTimeout(function(){
			
			console.log(e.keyCode);
			if(e.keyCode==46||e.keyCode==8){
				
			}else{
				if(e.target.value.length==3){
					e.target.value = e.target.value + '-';
				}
				if(e.target.value.length==8){
					e.target.value = e.target.value + '-';
				}
			}
		},0);
		
		
	}
	
	function checkValidate(){
		if(tmpEmail!=gmjuseremail.value){
			alert('아이디 중복확인을 하셔야합니다.');
			buttondisabled();
			return;
		}
		
		var d = new Date();
		
	
		if(!gmjuseremail.value.match(emailPattern)||blankPattern.test(gmjuseremail.value)){
			alert('이메일을 확인하세요.');
			return;
		}
		
		
		if(gmjuserpwd.value.length<8||gmjuserpwd.value.length>16||blankPattern.test(gmjuserpwd.value)){
			alert('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}
		if(!gmjuserpwd.value.trim().match(pwdPattern)){	
			alert('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}
		if(gmjuserpwd.value!=gmjuserpwdchk.value){
			
			alert('비밀번호가 서로 다릅니다.');
			return;
		}
		
		if(gmjusername.value.match(hanglePattern)&&gmjusername.value.length<2){
			alert('이름은 한글로 쓰셔야합니다.');
			return;
			
		}
		if(!gmjuserphone.value.match(/^[0-9]{3}[-]{1}[0-9]{3,4}[-]{1}[0-9]{4}$/g)){
			alert('핸드폰 번호를 확인해주세요. 10자리 또는 11자리를 기입해야 합니다.')
			return;
		}
		if(gmjuserbirth.value.substring(0,4)>d.getFullYear()){
			alert('현재시간보다 미래일 순 없습니다.0');
			return;
		}else if(gmjuserbirth.value.substring(0,4)==d.getFullYear()){
			console.log(gmjuserbirth.value.substring(5,7));
			console.log(d.getMonth());
			if(gmjuserbirth.value.substring(5,7)>d.getMonth()+1){
				alert('현재시간보다 미래일 순 없습니다.1');
				return;
			}else if(gmjuserbirth.value.substring(5,7)==d.getMonth()+1){
				if(gmjuserbirth.value.substring(8,10)>d.getDate()){
					alert('현재시간보다 미래일 순 없습니다.2');
					return;
				}
			}
		}
	
		if(gmjuseraddress.value.trim()==''){
			alert('주소를 입력하셔야 합니다.');
			return;
		}
		console.log(gmjuseraddress);
		
		
		return true;
		
		
	}
	
		
	
	
	function submit(){
		
		if(!checkValidate()){
			console.log('결과는실패');
			return;
		};
		
		
		for(var i=0;i<2;i++){
			if(gmjusersexTest[i].checked){
				gmjusersex=gmjusersexTest[i];
			};
		}
		
		signupdata['gmjuseremail']=gmjuseremail.value;
		signupdata['gmjuserpwd']=gmjuserpwd.value;
		signupdata['gmjusername']=gmjusername.value;
		signupdata['gmjuserphone']=gmjuserphone.value;
		signupdata['gmjuserbirth']=gmjuserbirth.value;
		signupdata['gmjusersex']=gmjusersex.value;
		signupdata['gmjuseraddress']=gmjuseraddress.value;

		
	
		
		
		var conf = {
				url:'/gmjclient/',
				method:'POST',
				param : JSON.stringify(signupdata),
				success : function(res){
					alert('회원가입이 성공했습니다.');	
					location.href=location.href;
				}
		}
		au.send(conf);
	}
	
	////////////엔터키 되도록하는 곳. 
	window.addEventListener('click',detect);
	function detect(){
		//로그인 엔터키 인지
		if(document.querySelector('#login').style.display=='block'){
			window.addEventListener("keydown", onKeyDown);
		}else{
			
			window.removeEventListener("keydown", onKeyDown);
		}
		//회원가입 엔터키 인지
		
		if(document.querySelector('#signup').style.display=='block'){
			window.addEventListener("keydown", onKeyDown1);
		}else{
			window.removeEventListener("keydown", onKeyDown1);
		}
		
		
	}
	function onKeyDown(e){
		
	      if(e.keyCode==13){
	      document.querySelector('#lg').click();
	     
	    }
	}
	
	
	function onKeyDown1(e){
	
	      if(e.keyCode==13){
	      document.querySelector('#sb').click();
	     
	    }
	};	
	function buttonabled(){
		 document.querySelector('#sb').disabled=false;
	}
	function buttondisabled(){
		 document.querySelector('#sb').disabled=true;
	}
	
	
	
	
	