<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="531182174364-opqp8ob664ikb4nq0f8qplffg4g6eti6.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
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

<!-- 팝업 콘텐츠 -->
 
<div class="popup" data-popup="popup-1">
    <div class="popup-inner">
        <h2>Login</h2><p/>
     	<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
     	<a href="#" onclick="signOut();">Sign out</a><p/>
        <div class="fb-login-button" data-max-rows="1" data-size="large"
      data-button-type="continue_with" data-show-faces="false"
      data-auto-logout-link="false" data-use-continue-as="false"></div>
        <p><a data-popup-close="popup-1" href="#">Close</a></p>
        <a class="popup-close" data-popup-close="popup-1" href="#">x</a>
    </div>
</div>
</body>
<!-- 구글 로그인 -->
<script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        key = AIzaSyDPjPMk_Hf8iQpxIJfsArCwOdPpfrX1JCo;
        console.log("ID Token: " + id_token);
      };
    </script>
    <!-- 구글 로그아웃 -->
    <script>
    function signOut() {
      var auth2 = gapi.auth2.getAuthInstance();
      auth2.signOut().then(function () {
        console.log('User signed out.');
      });
    }
  </script>
    </script>
    <!-- 페이스북 -->
     <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1404609192970084',
      cookie     : true,
      xfbml      : true,
      version    : 'v2.10'
    });
    FB.AppEvents.logPageView();   
  };

  (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id))
         return;
      js = d.createElement(s);
      js.id = id;
      js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.10";
      fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk')); // 페이스북 로그인 API
   
</script>
<!-- 메인 슬라이드 -->
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