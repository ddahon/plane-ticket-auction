<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register success</title>
</head>
<style>
 #a {
    width:50%;
	height:200px;
	border: 1px dashed ;
    background-color:lightyellow;
    text-align:center;
}
</style>
<body>
<div id="a">
<form action="check.jsp" method="post">
 <% request.setCharacterEncoding("UTF-8");
   String id=request.getParameter("id");
   session.setAttribute("id", id);
   String name=request.getParameter("name");
   session.setAttribute("name", name);

   String password=request.getParameter("password");
   session.setAttribute("password", password);
 %>
 
 congratulation！<br>
 your account is:<%=id %><br>
 your password is:<%=password %><br>
 
</form>
<a href="login.jsp" style="color:#FAAF46 font-size:10px">back to login</a>
</div>
</body>
</html>