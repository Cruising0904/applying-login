<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/public/test.css">
<script src='http://code.jquery.com/jquery-latest.js'></script>
</head>
<body>
<section></section>
<header>
   <h1>JQuery Popup</h1>
   <h2>Click it</h2>
</header>

<div>
   <h1>Pop up</h1>
   <p>Will Replace</p>
</div>

<script type="text/javascript">
$(document).ready(function(){
   $("header h2").click(headerClick);
   $("section").click(sectionClick);
});

function headerClick(){
   var documentWidth =document.documentElement.clientWidth;
   var documentHeight =document.documentElement.clientHeight;
   var willLeft = documentWidth / 2 - 150;
   var willTop = documentHeight / 2 - 100;
   
   $("div").css({"left":willLeft, "top":willTop});
   $("div").fadeIn("slow");
   
   $("section").css({"background-color":"Black","opacity":0.7,
      "display":"block"});
}

function sectionClick(){
   $("div").fadeOut("slow");
   $("section").css({"background-color":"inherit", "display":"none"});
   $("div").css({"background-color":"white"});
}
</script>

</body>
</html>