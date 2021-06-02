package pack;

import java.io.IOException;
import java.sql.Time;
import java.time.LocalDate;
import java.util.Collection;
import java.util.Date;

import javax.ejb.EJB;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Serv")
public class Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	private Facade facade;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Serv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op = request.getParameter("op");

		if (op != null) {
			if (op.equals("auction_info")) {
				int ticketNumber = Integer.parseInt(request.getParameter("ticket_number"));
				request.setAttribute("auctionInfo", facade.getAuctionInfo(ticketNumber));
				request.getRequestDispatcher("detailsEnchere.jsp").forward(request, response);
			}
			if (op.contentEquals("goto_sell")) {
				// redirect user to login if not logged in
				if (request.getSession().getAttribute("user") == null) {
					request.getRequestDispatcher("login.jsp").forward(request, response);
				} else {
					request.getRequestDispatcher("vente.jsp").forward(request, response);
				}
				
			}
		} else {
			request.getRequestDispatcher("index.jsp").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");

		if (op != null) {
			if (op.equals("add_ticket")) {
				int ticketNumber = Integer.parseInt(request.getParameter("ticketNumber"));
				String lieuDepart = (String)request.getParameter("lieuDepart");
				String lieuArrivee = (String)request.getParameter("lieuArrivee");
				String airlineName = (String)request.getParameter("airlineName");
				LocalDate departureDate = LocalDate.parse(request.getParameter("date"));
				float price = Float.parseFloat(request.getParameter("price"));
				
				Flight flight = new Flight();
				flight.setDepartmentAirportName(lieuDepart);
				flight.setArrivalAirportName(lieuArrivee);
				flight.setDepartureDate(departureDate);
				
				Ticket ticket = new Ticket();
				ticket.setTicketNumber(ticketNumber);
				ticket.setFlight(flight);
				ticket.setAirlineName(airlineName);
				ticket.setPrice(price);
				
				facade.addTicket(ticket);
				request.getRequestDispatcher("index.jsp").forward(request,response);
			}
			if (op.contentEquals("resultats_recherche")) {
				if (request.getParameter("ticketNumber").equals("")) {
					// No ticket number has been specified : list all the tickets
					request.setAttribute("results", facade.getAllTickets());
				} else {
					int ticketNumber = (int)Integer.parseInt(request.getParameter("ticketNumber"));
					Collection<Ticket> results = facade.searchByNumber(ticketNumber);
					request.setAttribute("results", results);
				}
				
				request.getRequestDispatcher("resultatsRecherche.jsp").forward(request, response);
			}
			if (op.equals("login")) {
				
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			if (op.contentEquals("register")) {
				String name = request.getParameter("id");
				String password = request.getParameter("password");
				User user = new User();
				user.setName(name);
				user.setPassword(password);
				facade.registerUser(user);
				request.getRequestDispatcher("registersuccess.jsp").forward(request, response);
			}
			if (op.contentEquals("check")) {
				String name = request.getParameter("id");
				String password = request.getParameter("password");
				User user = facade.check(name, password);
				if (user==null) {
					request.getRequestDispatcher("loginfailure.jsp").forward(request, response);
				} else {
					request.getSession().setAttribute("user", user);
					request.getRequestDispatcher("loginsuccess.jsp").forward(request, response);
				}
			}
			if (op.equals("Confirmer")) {
			
			request.getRequestDispatcher("achatsucces.jsp").forward(request, response);
			String ticketNumber = request.getParameter("ticketNumber");
				request.getRequestDispatcher("achatsucces.jsp").forward(request, response);
			}
			
			if (op.contentEquals("acheter")) {
				int ticketNumber = Integer.parseInt(request.getParameter("ticketNumber"));
				Ticket ticket = facade.getTicket(ticketNumber);
				request.setAttribute("ticket", ticket);
				request.getRequestDispatcher("achat.jsp").forward(request, response);
			}
		} else {
			doGet(request, response);
		}
		
	}

}
