var logingmjuseremail =  document.querySelector('#logingmjuseremail');
	var logingmjuserpwd = document.querySelector('#logingmjuseremail');
	var data ={};
	function login(){
			
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
	var gmjuserpwd = document.querySelector('#gmjuseremail');
	var gmjusername =  document.querySelector('#gmjusername');
	var gmjuserphone =  document.querySelector('#gmjuserphone');
	var gmjuserbirth =  document.querySelector('#gmjuserbirth');
	var gmjusersexTest =  document.querySelectorAll('input[name="optradio"]');
	var gmjusersex;
	var gmjuseraddress =  document.querySelector('#gmjuseraddress');
	var signupdata ={};
	
	
	function submit(){
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
	