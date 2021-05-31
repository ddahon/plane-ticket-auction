<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Rechercher un billet</title>
	</head>
	<body>
		<h1>Rechercher un billet</h1>
		<form action="Serv?op=resultats_recherche" method=post>
			<label for="fticketNumber">Numéro de ticket: </label>
  			<input type="text" id="ticketNumber" name="ticketNumber"><br>
			<label for="fdepart">Lieu de départ: </label>
  			<input type="text" id="lieuDepart" name="lieuDepart"><br>
		 	<label for="fdepart">Lieu d'arrivée: </label>
  			<input type="text" id="lieuArrivee" name=lieuArrivee"><br>
		 	<label for="fdepart">Date de départ: </label>
  			<input type="date" id="date" name="fdate"><br>
		 	<label for="fheure">Heure de départ </label>
  			<input type="time" id="heure" name="heure"><br>
  			<input type="submit" name="rechercher" value="rechercher"/><br>
		</form>
	</body>
</html>