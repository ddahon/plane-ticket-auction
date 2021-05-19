<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Enchères</title>
	</head>
	<body>
	<%
		if (request.getAttribute("ticketNumbers") != null) {	
			Collection<Integer> ticketNumbers = (Collection<Integer>) request.getAttribute("ticketNumbers");
			for(Integer ticketNumber : ticketNumbers) { 
				out.println("<a href=\"Serv?op=auction_info&ticket_number=" + ticketNumber + "\">"+ ticketNumber +"</a><br>");
			}
		}
	%>
	</body>
</html>