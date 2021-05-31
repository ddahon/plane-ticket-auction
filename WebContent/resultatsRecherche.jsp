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
		if (request.getAttribute("results") != null) {	
			Collection<AuctionInfo> results = (Collection<AuctionInfo>) request.getAttribute("results");
			if (results.size() == 0) {
				out.println("<p>Aucun résultat</p>");
			} else {
				for(AuctionInfo result : results) { 
					out.println("<a href=\"Serv?op=auction_info&ticket_number=" + result.getTicketNumber() + "\">"+ result.getTicketNumber() +"</a><br>");
				}
			}
		} else {
			out.println("Aucun résultat");
		}
	%>
	</body>
</html>