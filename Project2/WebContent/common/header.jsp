<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Project2/common/css/style.css" rel="stylesheet" type="text/css" />
<link href="/Project2/common/css/header.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<script type="text/javascript">
function logout(){
	//history.back(-1);
	location.replace('/Project2/common/Logout.jsp');
}
</script>
</head>
<body>

		<div id="wrap">
		<!--header-->
		<header>
			<div class="logo"><img src="/Project2/img/true.jpg"/></div>
			<nav>
				<ul>
					<li>학번 :</li>
					<li>${LoginDTO.id }</li>
					<li>이름 :</li>
					<li>${LoginDTO.name }</li>
					<li><a href="#" onclick="window.open('/Project2/common/member_form.jsp','개인정보수정','width=300,height=390,menubar=no,status=no,toolbar=no,resizable=no,left=350,top=350');">정보수정</a></li>
					<li><div onclick='logout()'>로그아웃</div></li>
				</ul>
			</nav>
		</header>
		
		<!--header-->

	</div>
		
</body>
</html>