function twitter(){
		var twitter = document.querySelector('.twitter');

		var twitterhtml='';
		
		 au.send({
		 url : '/tweets',
		 method : 'GET',
		 success : function(res) {
		 res = JSON.parse(res);
		 console.log(res);
		 for(var i of res){
		 twitterhtml +='<div style="border-bottom:1px grey solid;padding:5px 0px 0px 5px;"><div style="height:130px; float:left;width:33px"><img src="'+i.user.biggerProfileImageURLHttps+'" style=" object-fit:cover;border-radius: 50%;width:30px;height:30px;"></div><div style="font-size:20px;font-weight:bold float:left;">'+i.user.screenName+'</div>'+i.text+'<br><br></div>';	
		 }
		 twitter.insertAdjacentHTML('beforeend',twitterhtml);	
		 }
		 }) 
		
	}
		
	/* 	var twitte = document.querySelector('.twitte');
		var twittehtml = '';
		twittehtml = '<div style="float:left;"><img src="https://ssl.pstatic.net/sstatic/search/2015/ico_rt_entertain.png" style="width:50px;"></div><div style="float:left;border-bottom: 1px solid #e6a756;">undefined아이디는myoyongshi: 글내용은RT @hitchhiker_j: ‘2018년에 건축가 김중업을 어떻게 보여줄까’에 대한 편집자와 디자이너의 고민, 답을 찾아가는 과정을 들을 수 있어 좋았다. 손바닥만한 크기의 아주 가벼운 책으로 만들고 싶었다는 정재완 디자이너의 말이 기억에 남았다…<br><br></div>'
				.repeat(10);

		twitte.insertAdjacentHTML('beforeend', twittehtml); */

//랜드마크 
landmarkSeoul();
		function landmarkSeoul(){
			var seoullm = document.querySelector('.seoullm');
			au.send({
				url:'/gmjlandmark/서울',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						seoullm.insertAdjacentHTML('beforeend',html);	
					}
					landmarkKg();
					
				}
				
			})
		}
		function landmarkKg(){
			var kglm = document.querySelector('.kglm');
			au.send({
				url:'/gmjlandmark/경기도',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						kglm.insertAdjacentHTML('beforeend',html);	
					}
					 landmarkKs()
				}
				
			})
		}
		function landmarkKs(){
			var kslm = document.querySelector('.kslm');
			au.send({
				url:'/gmjlandmark/경상도',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						kslm.insertAdjacentHTML('beforeend',html);	
					}
					landmarkJl()
				}
				
			})
		}
		function landmarkJl(){
			var jllm = document.querySelector('.jllm');
			au.send({
				url:'/gmjlandmark/전라도',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						jllm.insertAdjacentHTML('beforeend',html);	
					}
					landmarkCc()
				}
				
			})
		}
		function landmarkCc(){
			var cclm = document.querySelector('.cclm');
			au.send({
				url:'/gmjlandmark/충청도',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						cclm.insertAdjacentHTML('beforeend',html);	
					}
					landmarkGw()
				}
				
			})
		}
		function landmarkGw(){
			var gwlm = document.querySelector('.gwlm');
			au.send({
				url:'/gmjlandmark/강원도',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						gwlm.insertAdjacentHTML('beforeend',html);	
					}
					 landmarkJj()
				}
				
			})
		}
		function landmarkJj(){
			var jjlm = document.querySelector('.jjlm');
			au.send({
				url:'/gmjlandmark/제주도',
				method:'GET',
				success : function(res){
					res=JSON.parse(res);
					for(var i=0;i<res.length;i++){
						var html = '<div class="lmsection"><div style="font-size:20px">'+Number(i+1)+'위 </div>';
						html+='<div style="width:155px;height:155px;margin-bottom:10px;padding:2.5px; background:rgba(255,255,255,0.8)" ><img src="'+res[i].gmjarchitectbthumb+'" style="width:150px;height:150px;"></div>'
						html+='<div style="font-size:20px">&nbsp;&nbsp;'+res[i].gmjarchitectbtitle+'</div>'
						html+='</div>';
						jjlm.insertAdjacentHTML('beforeend',html);	
					}
					twitter();
				}
				
			})
		}
		
		
		
		
		