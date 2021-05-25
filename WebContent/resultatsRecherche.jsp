<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Résultats de la recherche</title>
	</head>
	<body>
	<h3>Résultats de la recherche : </h3>
	<%
		if (request.getAttribute("ticketNumbers") != null) {	
			Collection<Integer> ticketNumbers = (Collection<Integer>) request.getAttribute("ticketNumbers");
			if (ticketNumbers.size() == 0) {
				out.println("<p>Aucun résultat</p>");
			} else {
				for(Integer ticketNumber : ticketNumbers) { 
					out.println("<a href=\"Serv?op=auction_info&ticket_number=" + ticketNumber + "\">"+ ticketNumber +"</a><br>");
				}
			}
		} else {
			out.println("Erreur : ticketNumbers==null");
		}
	%>
	</body>
</html>