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
		<title>Rechercher un billet</title>
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
	        <li><a href="login.jsp">Sell</a></li>
	        <li><a href="login.jsp">Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav> 
	<div class="container-fluid text-center">
		<h1>Rechercher un billet</h1>
		<div class="col-sm-6 text-center">
			<form action="Serv?op=resultats_recherche" method=post class="form">
	  			<input type="text" id="ticketNumber" name="ticketNumber" placeholder="Ticket Number"><br>
	  			<input type="text" id="lieuDepart" name="lieuDepart" placeholder="Where From?"><br>
	  			<input type="text" id="lieuArrivee" name="lieuArrivee" placeholder="Where To?"><br>
	  			<input type="date" id="date" name="fdate" placeholder="Departure"><br>
	  			<input type="submit" name="Search" value="Search" class="btn"/><br>
			</form>
		</div>
		
	</div>
	</body>
</html>