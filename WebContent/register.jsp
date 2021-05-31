<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>register</title>
</head>
<style>
 #a {
    width:50%;
	height:50%;
	border: 1px dashed ;
    background-color:lightgreen;
    text-align:center;
}

body{
background-color:lightyellow;
}
</style>

<body>
<%--register box--%>
<div id="a">
<h1>register</h1>
<form action="registersuccess.jsp" method="post">
account
<input type="text" name="id">
<br>

password
<input type="password" name="password">
<br>

name:
<input type="text" name="name">
<br>

telephone:
<input type="text" name="phone number">
<br>

<input type="submit" value="register">


</form>
</div>
 
</body>
</html>

