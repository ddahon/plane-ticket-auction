<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mise en vente d'un billet</title>
	</head>
	<body>
	<form action="Serv?op=add_auction" method=post>
		Ticket number : <input type="text" name="number"><br/>
		Info/Details : <input type="text" name="info"><br/>
		<input type="submit" name="ok" value="ok"><br/>
	</form>
	</body>
</html>