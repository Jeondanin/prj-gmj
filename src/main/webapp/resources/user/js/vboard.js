var pagination = document.querySelector('#paginationz');

	var paging_here = document.querySelector('#paging_here');
	
	var paging = document.querySelector('#paging');
	var totalCnt;
	var groupcnt;//몇개씩 보기. 위에서 설정할 수 있는 값이라고. 
	var currentpage=1;
	var url;
	var block =5;
	var init=1;
	function doInit() {
		if(url!==undefined){
			viewBoard();
			
		}else{
			showPaging(1);	

		}
		
		
		
	}
	window.addEventListener('load', doInit);

	function showPaging(no) {
		au.send({
			url : '/gmjvboardcnt',
			method : 'GET',
			success : function(res) {
				res = JSON.parse(res);
				totalCnt = res.totalCnt;
				totalPage = res.totalPage;
				showPaging2(totalCnt,totalPage)
				var pageno = Math.ceil(no/10);
				showList(pageno);		
			}
		})
	}
	//total cnt 122, totalPage 13페이지 
	function showPaging2(totalCnt,totalPage,init=1,block=5){
		
		pagination.innerHTML='';
		
		var fin = init+block-1
		if(totalPage-init<5){
			
			fin=totalPage;
			
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
					
					html2 += '<div class="col-sm-1"><a onclick="showList('+j+')">'+j+'</a></div>';
				}	

		};
		
		pagination.insertAdjacentHTML('beforeend', html2);
		
		
	}
	
	function showList(number){
		var html='';
		au.send({
			url : '/gmjvboarduser?page='+number,
			method : 'GET',
			success : function(res) {
				res = JSON.parse(res);
				for(var i=0;i<10;i++){
					if(res[i]!=null){
						html += '<tr class="board"><td>'
							+ res[i].gmjvboardno + '</td><td><a href="/uri/prj/user/socialMedia/view?no='+res[i].gmjvboardno+'"><p>'
							+ res[i].gmjvboardtitle +'</p><div><div id="filter"></div><img src="'+res[i].gmjvboardthumb+'"></div></a></td>'
							/*+'<td>'+ res[i].gmjusername + '</td>'*/
							+'<td>' +res[i].credat + '</td><td>'
							+ res[i].gmjvboardcnt + '</td></tr>';
					}
				}
				paging_here.innerHTML='';
				paging_here.insertAdjacentHTML('afterbegin', html);
				boldify(number);
			
					
				
			}
		})
		
	}
	function boldify(number){
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
	////
	function viewBoard(){
		
		
		au.send({url:'/gmjvboard/'+no,
		method:'GET',
		async : false,
		success : function(res){
			res=JSON.parse(res);
			
			if(viewSectionhtml!=''){
				viewSectionhtml='';
				viewSection.innerHTML='';
			}
			viewSectionhtml += '<form><div class="form-group">'
			
			viewSectionhtml += '<div class="row"><div class="col-sm-12 viewunderline"><div class="viewtitle">';
				viewSectionhtml += res.gmjvboardtitle+'</div><div>'+res.credat+'</div>';
				viewSectionhtml += '</div></div>'
			viewSectionhtml += '<div class="row viewcontentrow"><div class="col-sm-12 viewcontent">'
				viewSectionhtml += res.gmjvboarddesc;
				viewSectionhtml += '</div></div>';
				if(res.gmjuploadaddress){
					viewSectionhtml +='<div class="row"><div class="col-sm-12 viewonline">';
					viewSectionhtml += '<img  src="/resources/uploadfiles/'+res.gmjuploadaddress+'">';
				viewSectionhtml +='</div></div>';
				}
			viewSectionhtml += '</div>';
			viewSectionhtml += '</form>';
		
			
			viewSection.insertAdjacentHTML('beforeend',viewSectionhtml);
			
			viewreply();
				
			
		}})
		
	}

	
	
	