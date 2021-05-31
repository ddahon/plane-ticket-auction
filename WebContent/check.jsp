<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-utf-8">
<title>check</title>
</head>
<body>
<form method="post" action="">
<% 
   String id=(String)session.getAttribute("id");
   String password=(String)session.getAttribute("password");
   String name=request.getParameter("id");
   session.setAttribute("name", name);
   String password1=request.getParameter("password");
   session.setAttribute("password", password1);
if(id.equals(name)&&password1.equals(password))
{ response.sendRedirect("loginsuccess.jsp");}
else
response.sendRedirect("loginfailure.jsp");
%>
</form>
</body>
</html>