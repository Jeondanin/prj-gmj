<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Geocoding Service</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#floating-panel {
	position: absolute;
	top: 10px;
	left: 25%;
	z-index: 5;
	background-color: #fff;
	padding: 5px;
	border: 1px solid #999;
	text-align: center;
	font-family: 'Roboto', 'sans-serif';
	line-height: 30px;
	padding-left: 10px;
}

#floating-panel2 {
	position: absolute;
	top: 100px;
	left: 25%;
	z-index: 5;
	background-color: #fff;
	padding: 5px;
	border: 1px solid #999;
	text-align: center;
	font-family: 'Roboto', 'sans-serif';
	line-height: 30px;
	padding-left: 10px;
}

#maptools {
	position: absolute;
	width: 20%;
	height: 759px;
	top: 150px;
	left: 0px;
	background-color: rgba(221, 221, 221, 1);
	border-radius: 5px;
	transition-property: left;
	transition-duration: 0.4s;
	display: none;
}

#maptools #container {
	background-color: rgba(255, 255, 255, 0.8);
	margin: 1% 3%;
	padding: 5%;
	width: 84%;
	height: 90%;
	border-radius: 5px;
	overflow-y: auto;
}

#drawer {
	position: absolute;
	top: 480px;
	left: 20%;
	background-color: rgba(221, 221, 221, 1);
	width: 35px;
	height: 50px;
	transition-property: left;
	transition-duration: 0.4s;
	font-size: 35px;
	display: none;
}
</style>
</head>
<body>

	<div id="floating-panel">
		<span><a href="/uri/prj/user/home">GMJ</a>&nbsp;</span> <select
			id="fruits" name='fruits' style="height: 35px; m: 3px;">

			<option value='people' selected>건축가</option>
			<option value='building'>주소</option>
		</select> <input id="selectC" type="text" style="height: 35px" value="김중업"><input
			id="btz" type="button" value="검색" style="height: 35px">
	</div>
	<div id="map"></div>

	<div id="maptools">
		<div
			style="background: rgba(100, 200, 200, 1); margin: 1% 3%; padding-left: 15px;">
			<p
				style="font-size: 20px; margin-top: 3%; margin-bottom: 1%; font-weight: bold;">검색결과</p>
		</div>
		<div id="container"></div>

	</div>
	<div id="drawer"
		style="border-radius: 0 25px 25px 0; border: 5px solid rgba(100, 200, 200, 1); border-left: none;"
		onclick="hidetools()">&lt;</div>

	<script>
	var sc= document.getElementById('selectC')
	var fs= document.getElementById('fruits');
	var btz= document.getElementById('btz');
	var data={};
	
	
	function searchDB(data,geocoder,map){
		var container = document.querySelector('#container');
		container.innerHTML='';
		var conf = {
				url:'/gmjArchitectName/'+data.이름,
				method:'GET',
			//	param : JSON.stringify({uiid:id,uipwd:pwd,uiname:name,uiemail:email,uibirth:birth,uiaddress:address,uihobby:hobby,uidesc:desc,uitel:tel}),
				success : function(res){
					
					if(res=='[]'){
						alert('결과가 없습니다.')
					}else{
						res=JSON.parse(res);
						var testAd; 
					
							{for(var ads of res){
								console.log(ads.gmjarchitectbaddress1);
								console.log(ads.gmjarchitectbaddress2);
								//testAd = ads.gmjarchitectbaddress1+' '+ads.gmjarchitectbaddress2+ads.gmjarchitectbaddress3;
								//console.log(testAd)
								setTimeout(function() { 
									geocodeAddress(geocoder,map,ads);	
									console.log(86);
									console.log(ads);
									addtools(ads);
								}, 3000);
								
							}}
					}
					
			
					
					
				}
		}
		au.send(conf);
	
		
		
	}
	function addtools(ads){
		var toolbox = document.querySelector('#maptools');
		var drawer = document.querySelector('#drawer');
		
		var container = document.querySelector('#container');
		toolbox.style.display="block";
		drawer.style.display="block";
		var baddress= ads.gmjarchitectbaddress1+' '+ads.gmjarchitectbaddress2+' '+ads.gmjarchitectbaddress3;
		toolhtml='<div id="'+ads.gmjarchitectbtitle+'"style="font-weihgt:bold ;border-bottom:solid 1px grey;cursor:pointer;">'+ads.gmjarchitectbtitle+'</div><div> 건축가:'+ads.gmjarchitectkname+'</div><div>위치 : '+baddress+'</div><br>'		
		container.insertAdjacentHTML('beforeend',toolhtml);
		
	}
	function hidetools(){
		var toolbox = document.querySelector('#maptools');
		var drawer = document.querySelector('#drawer');
		if(toolbox.style.left==''||toolbox.style.left=='0px'){
			toolbox.style.left="-20%";
			drawer.style.left="0%";
			drawer.innerHTML='>';
		}else{
			toolbox.style.left="0";
			drawer.style.left="20%";
			drawer.innerHTML='<';
		}
		
		
	}
	function setCenter(resultsMap,ss){
		
	
		console.log(ss);
		resultsMap.setZoom(15);
		resultsMap.setCenter(ss.geometry.location);
	

		
	    //resultsMap.setCenter(position);
	}
	function searchAddress(data,geocoder,map){
		console.log(data.주소);
		var conf = {
				url:'/gmjArchitectBAddress/'+data.주소,
				method:'GET',
				//	param : JSON.stringify({uiid:id,uipwd:pwd,uiname:name,uiemail:email,uibirth:birth,uiaddress:address,uihobby:hobby,uidesc:desc,uitel:tel}),
				success : function(res){
					alert(res.length);
					if(res!=''){
					res=JSON.parse(res);
					geocodeAddress(geocoder,map,res);				
						
					}else{
						geocodeAddress(geocoder,map)
					}
					
													
				}
		}
		au.send(conf);
	}
	function insertFavorite(event,ads){
		console.log(event.target.parentElement);
		console.log(ads);
		var conf = {
				url:'/gmjFavorite',
				method:'POST',
				param : JSON.stringify({gmjuserno:1,gmjarchitectbno:ads}),
				success : function(res){
				//	alert(res.length);
				}
		}
		au.send(conf);
	}
	
	
	
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 14,
				center : {
					lat : 37.567,
					lng : 126.978
				}
			
			});
			var geocoder = new google.maps.Geocoder();
			
			document.getElementById('btz').addEventListener('click',
					function() {
					if(fs.value=="people"){
						console.log('사람으로 검색합니다.');
						console.log(sc.value);
						data['이름']=sc.value;
						searchDB(data,geocoder,map);
						
					}else{
						console.log('장소로 검색합니다.');
						console.log(sc.value);
						data['주소']=sc.value;
						searchAddress(data,geocoder,map)
						
					}
					 
						
					
					});
			
		
			var contentString = '<img src="https://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00">';
			contentString += '<h1>타이틀이 들어가면 됩니다.</h1>'
			contentString += '<p>설명문이 들어가면 됩니다.</p>'
			contentString += '<iframe width="200" height="120" src="https://www.youtube.com/embed/7DibxviDeGU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'
			
			/* var positions = [ {
				lat : 37.57,
				lng : 126.984
			}, {
				lat : 37.571,
				lng : 126.984
			}, {
				lat : 37.572,
				lng : 126.984
			} ]
			for (var i = 0; i < 3; i++) {
				var cafeMarker = new google.maps.Marker(
						{
							position : positions[i],
							map : map,
							icon : 'https://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00',
							title : 'Cafe'
						});

			
			} */

		}

		function geocodeAddress(geocoder,resultsMap,ads='없음'){
			
			var contentString;
			var address;
			console.log(ads);
			if(ads=='없음'){
				address = sc.value;
				contentString='<h1>'+address+'</h1>입니다.'						
			}else{
				console.log(ads.gmjarchitectbno);
				address= ads.gmjarchitectbaddress1+' '+ads.gmjarchitectbaddress2+' '+ads.gmjarchitectbaddress3
				contentString='<img src="https://png.pngtree.com/element_origin_min_pic/20/16/01/3056ac19d18d908.jpg" onclick="insertFavorite(event,'+ads.gmjarchitectbno+')"style="width:20px;height:20px; cursor:pointer;"><div name="'+ads.gmjarchitectbtitle+'"><h1>'+ads.gmjarchitectbtitle+'</h1><br><a href="'+ads.gmjarchitectbthumb+'"><img style="width:80px;height:120px;float:right;"src="'+ads.gmjarchitectbthumb+'"></a>'+ads.gmjarchitectbdesc+'</div>'; //함수로 따로 빼서 해도 될듯.
			}
			console.log(address);
			
			geocoder
					.geocode(
							{
								'address' : address
							},
							function(results, status) {
								if (status === 'OK') {
									console.log(results)
									resultsMap.setCenter(results[0].geometry.location);
									
									//marker를 지우고 다른거 
									for(var ss of results){
										console.log(ss.geometry.location.lat());
										console.log(ss.geometry.location.lng());
										document.querySelector('#'+ads.gmjarchitectbtitle+'').addEventListener('click',function(){setCenter(resultsMap,ss)});
											
										console.log(ads);
										console.log(ads.gmjarchitectbthumb);
									var marker = new google.maps.Marker({
										
										
										map : resultsMap,
										position : ss.geometry.location,
									});
									google.maps.event.addListener(marker, 'click', function() {
										var infowindow = new google.maps.InfoWindow({
											maxWidth : 200,
											maxHeight: 300
										});
										infowindow.close();
										infowindow.setContent(contentString);
										infowindow.open(map, this);
									});
									
									
									}
								} else {
									alert('Geocode was not successful for the following reason: '
											+ status);
								}
							});
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtN6BEVPGOOsj_lYnOGiD2-mOG7wJbcks&callback=initMap">
		
	</script>
</body>
</html>
