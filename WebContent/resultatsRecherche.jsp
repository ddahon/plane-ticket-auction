<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
	      <a class="navbar-brand" href="index.jsp">
	      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
		  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
		  </svg>
		  </a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="recherche.jsp">Buy</a></li>
	        <li><a href="Serv?op=goto_sell">Sell</a></li>
	        <li><a href="login.jsp">Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav> 
	<div class="container-fluid">
		<%
		Collection<Ticket> results = (Collection<Ticket>) request.getAttribute("results");
		if (results != null && results.size() > 0) {	
			out.println("<h1>Found " + results.size() + " results</h1>");
			for(Ticket ticket : results) { 
				out.println("<div class=\"row\">");
				out.println(ticket.getFlight().getDepartureDate()+"<br>");
				out.println(ticket.getFlight().getDepartmentAirportName()+"<br>");
				out.println(ticket.getFlight().getArrivalAirportName()+"<br>");
				out.println(ticket.getPrice()+"<br>");
				out.println(ticket.getAirlineName()+"<br>");
				out.println("</div><br>");
			}
		} else {
			out.println("<h1>No results found</h1>");
			out.println("<a href=\"recherche.jsp\">Back to search</a>");
		}
		%>
	</div>
	
	</body>
</html>