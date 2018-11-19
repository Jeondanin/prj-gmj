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
							+ res[i].gmjcboardno + '</td><td><a href="/uri/prj/user/community/view?no='+res[i].gmjcboardno+'">'
							+ res[i].gmjcboardtitle + '</a></td><td>'
							+ res[i].gmjusername + '</td><td>'
							+ res[i].credat + '</td><td>'
							+ res[i].gmjcboardcnt + '</td></tr>';
					}
				}
				paging_here.innerHTML='';
				paging_here.insertAdjacentHTML('afterbegin', html);
				bodify(number);
				if(viewBoard()!=-1){
					viewBoard();
				}
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
		location.href="/uri/prj/user/community/insert";
	}
	
	
	