<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Détails de l'enchère</title>
</head>
<body>
<h3>Description/Infos : </h3>
	<%
		AuctionInfo auctionInfo = (AuctionInfo) request.getAttribute("auctionInfo");
		out.println(auctionInfo.getInfo());
	%>
</body>
</html>