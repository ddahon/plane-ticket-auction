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
	        Ticket airlinename = (Ticket) request.getAttribute("airlineName");
		    out.println(airlinename.getAirlineName());
		    
	        Ticket flightNumber = (Ticket) request.getAttribute("flight");
		    out.println(flightNumber.getFlight());
		    
	        Ticket orignalSeller = (Ticket) request.getAttribute("orignalSeller");
		    out.println(orignalSeller.getOriginalSeller());
		    
	        Ticket owner = (Ticket) request.getAttribute("owner");
		    out.println(owner.getOwner());
		    
	        Ticket ticketnumber = (Ticket) request.getAttribute("ticketnumber");
		    out.println(ticketnumber.getTicketNumber());
		    
	        Ticket price = (Ticket) request.getAttribute("price");
		    out.println(price.getPrice());
		    

        %>
        </form>

	<form action="Serv?op=add_auction" method=post>
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
