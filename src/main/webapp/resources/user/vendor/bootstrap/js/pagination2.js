var boardbody = document.querySelector('#boardbody');
	var paging_here = document.querySelector('#paging_here');
	console.log(paging_here);
	var paging = document.querySelector('#paging');
	var totalCnt;
	var groupcnt;//몇개씩 보기. 위에서 설정할 수 있는 값이라고. 
	var currentpage=1;

	function showPaging2(totalCnt, totalPage) {
		au.send({
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
						currentpage=1;
				
						paging_here.insertAdjacentHTML('beforeend',html3)
						
						

					}
				})
	}

	//페이지 네비게이션과 페이지 연동하는 부분.
	function pageSelected(e) {
		
		
		
		while (paging_here.hasChildNodes()) {
			//console.log(paging_here);
			paging_here.removeChild(paging_here.firstChild);
			
		}
		if (e.target.innerHTML >= 0) {
			currentpage = e.target.innerHTML;
			
			
			//클릭하면 id가 변화하는 부분.이벤트 타겟 과 그것이 포함되는 전체영역을 잡아서 함. 	
			boldify(0,e);
		
			
			
			//타켓의 번호에 해당하는 것의 내용물(리스트)이 나옴. 번호a태그를 누르면 그것의 내용물이 뿌려진다고 생각하면됨.
			showlist(currentpage);
			
			
			
			
		} else {
			//console.log(e.target.innerHTML);
			//전에 있는 애들은 display:none으로하고 << 앞에 있는 애들 >> 만들기
			pagingV(e);

		}

	};
	function boldify(sign,e='none'){
		var changeall = document.querySelectorAll('#pageul li .paging');
		for (var i = 0; i < changeall.length; i++) {
			changeall[i].setAttribute('id', 'paging');
		};
		if(e!='none'){
			e.target.setAttribute('id', 'paging_selected');
		}else{
			//console.log(changeall);
			if(sign=='1'){
				changeall[Math.floor(currentpage/5)*7].setAttribute('id','paging_selected');	
			}else if(sign=='-1'){
				changeall[Math.ceil(currentpage/5)*7-2].setAttribute('id','paging_selected');
			}
			
		}
		
	};
	function showlist(currentpage){
		var contents = document.querySelectorAll('.board'+currentpage);	
		var html = '';
		for (var i = 0; i < contents.length; i++) {
			html += contents[i].outerHTML;
		}
		paging_here.innerHTML = html;
	};
	
	//페이지 네비게이션 설정 
	function pagingV(e) {
		
		var pagings = document.querySelector('#paging_selected');

		

		var jump =e.target.innerHTML;
		
		if (jump=='&gt;&gt;') {
			var upgrade = Math.ceil(currentpage/5)+1;
			var currentgrade = Math.ceil(currentpage/5);
			var upPage = document.querySelectorAll('.paginggroup'+upgrade);
			var currentPages = document.querySelectorAll('.paginggroup'+currentgrade);
			//console.log(currentPages);
			for(var i=0;i<currentPages.length;i++){
				//console.log('downpage'+i);
				currentPages[i].style.display="none";
			}
			for(var i=0;i<upPage.length;i++){
			//	console.log('upPage'+i);
				upPage[i].style.display="inline";
			}	
			
			currentpage=currentgrade*5+1; //6이되버림
			boldify(1);
			showlist(currentpage);
			
			
			
		}
		if(jump=='&lt;&lt;'){
			var downgrade = Math.ceil(currentpage/5)-1;
			var currentgrade = Math.ceil(currentpage/5);
			var downPage = document.querySelectorAll('.paginggroup'+downgrade);
			var currentPages = document.querySelectorAll('.paginggroup'+currentgrade);
		//	console.log(currentPages);
			//페이지 네비에 대한 처리 
			for(var i=0;i<currentPages.length;i++){
				//console.log('downpage'+i);
				currentPages[i].style.display="none";
			}
			for(var i=0;i<downPage.length;i++){
				//console.log('downPage'+i);
				downPage[i].style.display="inline";
			}
			
			currentpage=(currentgrade-1)*5;	//5가되버림
			boldify(-1);
			showlist(currentpage);
			
			
		
		}

	}