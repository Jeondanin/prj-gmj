var spreadsheet = new dhx.Spreadsheet('box');
var newData=[];
var datafs=[];
var attriNo;
function spreadsheetz(){
	au.send({
		url : '/gmjclient',
		method : 'GET',
		success : function(resp) {
		
			var res = JSON.parse(resp);
			newData =setData(res);
			spreadsheet.parse(newData);
			var check = testshow();
			
			if(check==resp){
				alert('오늘 공부 끝');
			}else{
				console.log('뭐지');
				console.log(resp);
				console.log(check);
			}
		
		}
	}) 
}
 
function setData(rawData){
	console.log(rawData.length);
	for(var i=0;i<rawData.length;i++){
		console.log(Object.keys(rawData[i]));
		
		attriNo =Object.keys(rawData[i]).length;
		
		for(var j=0;j<attriNo;j++){
			if(i==0){
				var dataLabel={cell:String.fromCharCode(Number(97+j))+1,value:Object.keys(rawData[i])[j]};
				newData.push(dataLabel);
			}
		var oneforData= { cell: String.fromCharCode(Number(97+j))+Number(i+2), value: Object.values(rawData[i])[j] };
		
		newData.push(oneforData);
		
		}
		console.log(Object.keys(i).length);
	}
	return newData;
}
 
 function testshow(){
	 var state = spreadsheet.serialize(1);
	 var row = (state.length-attriNo)/attriNo;
	
	 for(i=0;i<row;i++){
		 var mapfs= new Map();
		 for(j=0;j<state.length/(row+1);j++){
			 var key =state[j].value;
			 var value =state[(i+1)*10+j].value
			 mapfs[key]=value;
		 }
		 datafs.push(mapfs);
	 }
	 var jsonData = JSON.stringify(datafs)
	 console.log(jsonData);
	 return jsonData;
 }
 
 
 
 