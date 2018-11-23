var spreadsheet;
var newData=[];
var datafs;
var attriNo;
function spreadsheetz(){
	au.send({
		url : '/gmjclient',
		method : 'GET',
		success : function(resp) {
			var res = JSON.parse(resp);
			console.log(res);
			console.log(res.length);
			attriNo =Object.keys(res[1]).length;
			spreadsheet = new dhx.Spreadsheet('box',{ 
			    rowsCount:1,
			    colsCount:attriNo
			});
			newData =setData(res);
			spreadsheet.parse(newData);
			
		
		}
	}) 
}
 
function setData(rawData){
	console.log(rawData.length);
	for(var i=0;i<rawData.length;i++){
		console.log(Object.keys(rawData[i]));
		
		
		
		for(var j=0;j<attriNo;j++){
			if(i==0){
				var dataLabel={cell:String.fromCharCode(Number(97+j))+1,value:Object.keys(rawData[i])[j]};
				newData.push(dataLabel);
			}
		var oneforData= { cell: String.fromCharCode(Number(97+j))+Number(i+2), value: Object.values(rawData[i])[j] };
		
		newData.push(oneforData);
		
		}
		
	}
	return newData;
}
function saveAndSend(){
	var strData = repackagedata();
	au.send({ url:'/gmjclientAll',method:'PUT',param:strData,success: function(res){res=JSON.parse(res); console.log('수정성공')}
	})
	
} 


 function repackagedata(){
	 var state = spreadsheet.serialize(1);
	 if(!state.length){
		 state = state.data;
	 }
	 console.log(state);
	 console.log(attriNo)
	 console.log(state.length);
	 var row = (state.length-attriNo)/attriNo;
	 console.log(row);
	 datafs=[];
	 for(i=0;i<row;i++){
		 var mapfs= new Map();
		 for(j=0;j<state.length/(row+1);j++){
			 var key =state[j].value;
			 var value =state[(i+1)*10+j].value
			 mapfs[key]=value;
		 }
		 datafs.push(mapfs);
		 console.log(datafs);
	 }
	 var jsonData = JSON.stringify(datafs)
	 console.log(jsonData);
	 return jsonData;
 }
 
 
 
 