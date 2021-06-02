<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, pack.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Détails de l'achat</title>
		
	</head>
	<body>
	<h1>Confirmer Mon Achat</h1>
	<form action="achat.jsp" method=get>
	    <%
	        Ticket ticket = (Ticket)request.getAttribute("Ticket");
		    out.println(ticket.getAirlineName());
		    out.println(ticket.getOriginalSeller());
		    out.println(ticket.getOwner());
		    out.println(ticket.getTicketNumber());
		    out.println(ticket.getPrice());
		    
        %>
        </form>

	<form action="Serv?op=Confirmer" method=post>
	<input type="submit" value="Acheter"><br/>
    </form>


        <form method="post" action="">
      

       if(ticketnumber.equals(orignalSeller))
       { response.sendRedirect("achatsuccess.jsp");}
       else
       response.sendRedirect("achatfailure.jsp");
      
</form>
	 <body>
</html>
