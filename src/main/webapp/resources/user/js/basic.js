var logingmjuseremail =  document.querySelector('#logingmjuseremail');
	var logingmjuserpwd = document.querySelector('#logingmjuserpwd');
	var data ={};
	function login(){
		if(!logingmjuseremail.value.match(emailPattern)||blankPattern.test(logingmjuseremail.value)){
			console.log('이메일을 확인하세요.');
			console.log('공백이 포함되어 있습니다.');
			return;
		}
	
		console.log(logingmjuserpwd);
		if(logingmjuserpwd.value.length<8||logingmjuserpwd.value.length>16||blankPattern.test(logingmjuserpwd.value)){
			console.log('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}
		if(!logingmjuserpwd.value.trim().match(pwdPattern)){	
			console.log('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}	
		
		
		data['gmjuseremail']=logingmjuseremail.value;
		data['gmjuserpwd']=logingmjuserpwd.value;

		var conf = {
				url:'/gmjlogin/',
				method:'POST',
				param : JSON.stringify(data),
				success : function(res){
					console.log(res);
					location.href=location.href;
				}
		}
		au.send(conf);
	}
	function logout(){
		var conf = {
				url:'/gmjlogout/',
				method:'GET',
				success : function(res){
					alert('로그아웃 했슴돠. 결과값은 0이겠죠?'+res)
					location.href=location.href;
				}
		}
		au.send(conf);
	}
	
	//회원가입용//
	var gmjuseremail =  document.querySelector('#gmjuseremail');
	var gmjuserpwd = document.querySelector('#gmjuserpwd');
	var gmjuserpwdchk = document.querySelector('#gmjuserpwdchk')
	var gmjusername =  document.querySelector('#gmjusername');
	var gmjuserphone =  document.querySelector('#gmjuserphone');
	var gmjuserbirth =  document.querySelector('#gmjuserbirth');
	var gmjusersexTest =  document.querySelectorAll('input[name="optradio"]');
	var gmjusersex;
	var gmjuseraddress =  document.querySelector('#gmjuseraddress');
	var signupdata ={};
	
	var blankPattern = /[\s]/g;
	var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var pwdPattern =/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~,-])|([!,@,#,$,%,^,&,*,?,_,~,-].*[a-zA-Z0-9])/;
	var hanglePattern=/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
	
	gmjuserphone.addEventListener('keyup',adddash);

	
	
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
		
		
		var d = new Date();
		
	
		if(!gmjuseremail.value.match(emailPattern)||blankPattern.test(gmjuseremail.value)){
			console.log('이메일을 확인하세요.');
			console.log('공백이 포함되어 있습니다.');
			return;
		}
		console.log(gmjuserpwd.value);
		
		if(gmjuserpwd.value.length<8||gmjuserpwd.value.length>16||blankPattern.test(gmjuserpwd.value)){
			console.log('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}
		if(!gmjuserpwd.value.trim().match(pwdPattern)){	
			console.log('비밀번호 조건은 8자 ~16자이고, 영문(대소문자 구분),숫자,특수문자(!,@,#,$,%,^,&,*,?,_,~,-만 허용)를 혼용해주세요..');
			return;
		}
		if(gmjuserpwd.value!=gmjuserpwdchk.value){
			console.log(gmjuserpwdchk.value);
			console.log('비밀번호가 서로 다릅니다.');
			return;
		}
		console.log(gmjusername.value);
		if(gmjusername.value.match(hanglePattern)&&gmjusername.value.length<2){
			console.log('이름은 한글로 쓰셔야합니다.');
			return;
			
		}
		if(!gmjuserphone.value.match(/^[0-9]{3}[-]{1}[0-9]{3,4}[-]{1}[0-9]{4}$/g)){
			console.log('핸드폰 번호를 확인해주세요. 10자리 또는 11자리를 기입해야 합니다.')
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
					alert(res);	
					location.href=location.href;
				}
		}
		au.send(conf);
	}
	