<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page="" import="java.net.URLEncoder" %="">
<%@ page="" import="java.security.SecureRandom" %="">
<%@ page="" import="java.math.BigInteger" %="">
<%@ page="" contenttype="text/html;charset=UTF-8" language="java" %="">
<html>
  <head>
    <title>네이버로그인</title>
  </head>
  <body>
  <% string="" clientid="YOUR_CLIENT_ID" ;="" 애플리케이션="" 클라이언트="" 아이디값";="" redirecturi="URLEncoder.encode("YOUR_CALLBACK_URL"," "utf-8");="" securerandom="" random="new" securerandom();="" state="new" biginteger(130,="" random).tostring();="" apiurl="https://nid.naver.com/oauth2.0/authorize?response_type=code" +="&client_id=" clientid;="" redirecturi;="" state;="" session.setattribute("state",="" state);="" %="">
  <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
  </body>
</html>