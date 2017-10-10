<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>APPOLO</title>
<!-- 구글 로그인 버튼 헤드태그끝날때까지 -->
<head>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
  <script src="https://apis.google.com/js/api:client.js"></script>
  <script>
  var googleUser = {};
  var startApp = function() {
    gapi.load('auth2', function(){
      // Retrieve the singleton for the GoogleAuth library and set up the client.
      auth2 = gapi.auth2.init({
        client_id: '531182174364-opqp8ob664ikb4nq0f8qplffg4g6eti6.apps.googleusercontent.com',
        cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        //scope: 'additional_scope'
      });
      attachSignin(document.getElementById('customBtn'));
    });
  };

  function attachSignin(element) {
    console.log(element.id);
    auth2.attachClickHandler(element, {},
        function(googleUser) {
          document.getElementById('name').innerText = "Signed in: " +
              googleUser.getBasicProfile().getName();
        }, function(error) {
          alert(JSON.stringify(error, undefined, 2));
        });
  }
  </script>
  <style type="text/css">
    #customBtn {
      display: inline-block;
      background-color: #E24825;
      color: white;
      width: 233px;
      border-radius: 5px;
      border: thin solid #888;
      box-shadow: 1px 1px 1px grey;
      white-space: nowrap;
    }
    #customBtn:hover {
      cursor: pointer;
    }
    span.label {
      font-family: serif;
      font-weight: normal;
    }
    span.icon {
      background: url('/resources/img/gg.png') transparent 5px 50% no-repeat;
      display: inline-block;
      vertical-align: middle;
      width: 42px;
      height: 39px;
    }
    span.buttonText {
      display: inline-block;
      vertical-align: left;
      padding-left: 42px;
      padding-right: 42px;
      font-size: 16px;
/*       font-weight: bold; */
      /* Use the Roboto font that is loaded in the <head> */
      font-family: 'Roboto', sans-serif;
    }
  </style>
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
        <!-- In the callback, you would hide the gSignInWrapper element on a
  successful sign in -->
  <div id="gSignInWrapper">
    <span class="label"></span> <!-- 여기 태그안에 글 입력하면 버튼 앞에 글 나옴. -->
    <div id="customBtn" class="customGPlusSignIn">
      <span class="icon"></span>
      <span class="buttonText">Google로 로그인</span>
    </div>
  </div>
  <div id="name"></div><p/>
  <script>startApp();</script>
     	
        <div class="fb-login-button" data-max-rows="1" data-size="large"
      data-button-type="login_with" data-show-faces="false"
      data-auto-logout-link="true" data-use-continue-as="true"></div></br>
      
        <p ><a data-popup-close="popup-1" href="#" class="cbtn">Close</a></p>
        <a class="popup-close" data-popup-close="popup-1" href="#">x</a>
    </div>
</div>



</body>
<!-- 구글 토큰 -->
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
      js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.10&appId=349863832106694";
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
    min-width:100px;
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
/* Close */
 .pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}
a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}
a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}
 
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
    text-decoration:black;
}
</style>



</html>