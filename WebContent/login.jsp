<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-utf-8">
<title>login</title>
<style>
 #a {
    width:50%;
	height:200px;
	border: 1px dashed ;
    background-color:lightyellow;
    text-align:center;
}
body{
background-color:lightblue;
}
</style>
</head>
<body>
<div id="a">
<h1>login</h1>
<form action="check.jsp" method="post">

account:<input type="text" name="id"/>
<br>
password:<input type="password" name="password"/>
<br>
<input type="submit" value="login"/>
no account？<a href ="register.jsp">register</a>
</form>
</div>

</body>
</html>