<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Résultats de la recherche</title>
	</head>
	<body>
		 <nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="index.jsp"><i class="bi bi-house"></i></a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="recherche.jsp">Buy</a></li>
	        <li><a href="login.jsp">Sell</a></li>
	        <li><a href="login.jsp">Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav> 
	<h3>Résultats de la recherche : </h3>
	<%
		
		if ((boolean)request.getAttribute("resultsFound")) {	
			Collection<AuctionInfo> results = (Collection<AuctionInfo>) request.getAttribute("results");
			for(AuctionInfo result : results) { 
				out.println("<a href=\"Serv?op=auction_info&ticket_number=" + result.getTicketNumber() + "\">"+ result.getTicketNumber() +"</a><br>");
			}
		} else {
			out.println("<p>Aucun résultat</p>");
		}
	%>
	</body>
</html>