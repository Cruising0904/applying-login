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
    <a class="carousel-item" href="#로그인" id="login" data-popup-open="popup-1"><img src="/resources/img/login.jpg">로그인</a>
    <a class="carousel-item" href="#바로시작하기"><img src="/resources/img/call.jpg">바로시작하기</a>
    <a class="carousel-item" href="#Q & A"><img src="/resources/img/question.jpg">Q & A</a>
    <a class="carousel-item" href="#내 정보"><img src="/resources/img/info.jpg">내 정보</a>
    <a class="carousel-item" href="#회원가입"><img src="/resources/img/signin.jpg">회원가입</a>
  </div>
  
<!-- footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>  
<!-- 팝업 기능 -->
<script>
$(function() {
    //----- OPEN
    $('[data-popup-open]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-open');
        $('[data-popup="' + targeted_popup_class + '"]').fadeIn(900);
 
        e.preventDefault();
    });
 
    //----- CLOSE
    $('[data-popup-close]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-close');
        $('[data-popup="' + targeted_popup_class + '"]').fadeOut(1000);
 
        e.preventDefault();
    });
});
</script>
<!-- 팝업 콘텐츠 
<a class="btn" data-popup-open="popup-1" href="#">Open Popup #1</a>-->
 
<div class="popup" data-popup="popup-1">
    <div class="popup-inner">
        <h2>Wow! This is Awesome! (Popup #1)</h2>
        <p>Donec in volutpat nisi. In quam lectus, aliquet rhoncus cursus a, congue et arcu. Vestibulum tincidunt neque id nisi pulvinar aliquam. Nulla luctus luctus ipsum at ultricies. Nullam nec velit dui. Nullam sem eros, pulvinar sed pellentesque ac, feugiat et turpis. Donec gravida ipsum cursus massa malesuada tincidunt. Nullam finibus nunc mauris, quis semper neque ultrices in. Ut ac risus eget eros imperdiet posuere nec eu lectus.</p>
        <p><a data-popup-close="popup-1" href="#">Close</a></p>
        <a class="popup-close" data-popup-close="popup-1" href="#">x</a>
    </div>
</div>
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
<style>
/* Outer */
.popup {
    width:100%;
    height:100%;
    display:none;
    position:fixed;
    top:0px;
    left:0px;
    background:rgba(0,0,0,0.75);
}
 
/* Inner */
.popup-inner {
    max-width:700px;
    width:90%;
    padding:40px;
    position:absolute;
    top:50%;
    left:50%;
    -webkit-transform:translate(-50%, -50%);
    transform:translate(-50%, -50%);
    box-shadow:0px 2px 6px rgba(0,0,0,1);
    border-radius:3px;
    background:#fff;
}
 
/* Close Button */
.popup-close {
    width:30px;
    height:30px;
    padding-top:4px;
    display:inline-block;
    position:absolute;
    top:0px;
    right:0px;
    transition:ease 0.25s all;
    -webkit-transform:translate(50%, -50%);
    transform:translate(50%, -50%);
    border-radius:1000px;
    background:rgba(0,0,0,0.8);
    font-family:Arial, Sans-Serif;
    font-size:20px;
    text-align:center;
    line-height:100%;
    color:#fff;
}
 
.popup-close:hover {
    -webkit-transform:translate(50%, -50%) rotate(180deg);
    transform:translate(50%, -50%) rotate(180deg);
    background:rgba(0,0,0,1);
    text-decoration:none;
}
</style>



</html>