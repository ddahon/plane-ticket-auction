package pack;

import java.io.IOException;
import java.util.Collection;

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
			if (op.equals("add_auction")) {
				int ticketNumber = Integer.parseInt(request.getParameter("number"));
				String info = request.getParameter("info");
				
				AuctionInfo auction = new AuctionInfo();
				auction.setTicketNumber(ticketNumber);
				auction.setInfo(info);
				facade.addAuctionInfo(auction);
				request.getRequestDispatcher("index.jsp").forward(request,response);
			} 
			if (op.contentEquals("resultats_recherche")) {
				if (request.getParameter("ticketNumber").length() == 0) {
					// No ticket number has been specified : list all the tickets
					request.setAttribute("results", facade.getAllAuctions());
				} else {
					int ticketNumber = (int)Integer.parseInt(request.getParameter("ticketNumber"));
					Collection<AuctionInfo> results = facade.search(ticketNumber);
					request.setAttribute("results", results);
				}
				
				request.getRequestDispatcher("resultatsRecherche.jsp").forward(request, response);
			}
			if (op.contentEquals("buy")) {
				int ticketNumber = (int)Integer.parseInt(request.getParameter("ticketNumber"));
				request.getRequestDispatcher("achat").forward(request, response);
			}
		} else {
			doGet(request, response);
		}
		
	}

}
