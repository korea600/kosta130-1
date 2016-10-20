//	<ajax.js>

var xhr;
function setXMLHttpRequest(){		// XMLHttpRequest 객체 얻기
	if(window.ActiveXObject){		// IE v1~10
		try{
			xhr = new ActiveXObject("Msxml2.XMLHTTP");	// IE v6~10
		}
		catch(e){
			xhr = new ActiveXObject("Microsoft.XMLHTTP");	// IE v1~5
			
		}
	}
	else{
		xhr = new XMLHttpRequest();		// IE v11, non IE
	}
}
function sendRequest(url, params, callback, method){		// 서버페이지 요청
	setXMLHttpRequest();
	xhr.onreadystatechange=callback;
	var httpMethod = method ? method : 'GET';	// method인자값이 null이 아니면 method 그대로, false이면 GET을 httpMethod에 입력
												// JavaScript에서는 객체가 null이 아니면 boolean값은 true가 됨
	if(httpMethod!='GET' && httpMethod!='POST'){
		httpMethod='GET';
	}
	
	var httpParams = (params==null || params=='') ? null : params;
	var httpUrl = url;
	if(httpMethod=='GET' && httpParams !=null){
		httpUrl = httpUrl+"?"+httpParams;		// 주소 뒤에 ?을 붙여서 파라미터값 넣기
	}
	xhr.open(httpMethod, httpUrl, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');	// POST방식으로 전달했을때 한글처리를 하기 위함		
	xhr.send(httpMethod=='POST' ? httpParams : null);
}