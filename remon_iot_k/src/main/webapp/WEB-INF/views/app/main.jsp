<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>APPOLO</title>
</head>
<body>
<!-- side bar -->
 <ul id="slide-out" class="side-nav">
    <li><a href="/"><i class="material-icons">apps</i>APPOLO</a></li>
    <li><a class="waves-effect" href="#영상통화">영상통화 시작하기</a></li>
    <li><a class="waves-effect" href="#내정보">내 정보</a></li>
    <li><a class="waves-effect" href="#친구목록">친구목록</a></li>
    <li><a class="waves-effect" href="#Q & A">Q & A</a></li>
  </ul>
  <a href="#" data-activates="slide-out" class="button-collapse"><i class="medium material-icons">menu</i></a>
<!-- 상단 소셜로그인-->
	<p><div align="center"><span style="font-size: xx-large;color: #ffffff;font-weight: bold;"><a href="/">APPOLO</a></span><br/>
	<span style="font-size: xx-large;color: #ffffff;font-weight: bold;">1 : 1 영상통화</span><br/>
	<a class="waves-effect waves-light btn indigo" href="#페북"><i class="material-icons left">call</i>Facebook</a>
	<a class="waves-effect waves-light btn deep-orange accent-4" href="#구글"><i class="material-icons left">call</i>Google</a></div>
<!-- 서비스 -->
  <div class="carousel" style="text-align:center;">
    <a class="carousel-item" href="javascript:popupOpen();"><img src="/resources/img/login.jpg">로그인</a>
    <a class="carousel-item" href="#바로시작하기"><img src="/resources/img/call.jpg">바로시작하기</a>
    <a class="carousel-item" href="#Q & A"><img src="/resources/img/question.jpg">Q & A</a>
    <a class="carousel-item" href="#내 정보"><img src="/resources/img/info.jpg">내 정보</a>
    <a class="carousel-item" href="#회원가입"><img src="/resources/img/signin.jpg">회원가입</a>
  </div>
  
<!-- footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>  
</body>
<script>
	$(document).ready(function(){
		$(".button-collapse").sideNav();
		$('.fixed-action-btn').openFAB();
		// Destroy carousel
		$('.carousel').carousel('destroy');
		// start slide
		$('.carousel').carousel();
		$('.carousel').carousel('next');
		$('.carousel').carousel('next', 1); // Move next n times.
		// Previous slide
		$('.carousel').carousel('prev');
		$('.carousel').carousel('prev', 5); // Move prev n times.
	
		// Set to nth slide
		$('.carousel').carousel('set', 5);
	});

	function goPage(page) {
		if (page == "appolo") {
			location.href = "/";
		}
	}
</script>
<script type="text/javascript">



function popupOpen(){

	var popUrl = "/login";	//팝업창에 출력될 페이지 URL

	var popOption = "width=100%, height=100%, resizable=yes, scrollbars=yes, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

	}



</script>



</html>