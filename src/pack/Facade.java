package pack;

import java.awt.List;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.LinkedList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

@Singleton
public class Facade {
	
	@PersistenceContext
	private EntityManager em;

	// Add a new auction
	public void addAuctionInfo(AuctionInfo info) {
		em.persist(info);
	}
	
	// Add a new ticket
	public void addTicket(Ticket ticket) {
		em.persist(ticket);
	}
	
	// Get the auction info corresponding to the ticket number
	public AuctionInfo getAuctionInfo(int ticketNumber) {
		return em.find(AuctionInfo.class, ticketNumber);
	}
	
	// Get all the auctions
	public Collection<AuctionInfo> getAllAuctions() {
		TypedQuery<AuctionInfo> req = em.createQuery("select info from AuctionInfo info", AuctionInfo.class) ;
		return req.getResultList();
	}
	
	// Get all the tickets
		public Collection<Ticket> getAllTickets() {
			TypedQuery<Ticket> req = em.createQuery("select ticket from Ticket ticket", Ticket.class) ;
			return req.getResultList();
		}
	
	// Perform the search
	public Collection<Ticket> searchByNumber(int ticketNumber) {
		Ticket ticket = em.find(Ticket.class, ticketNumber);
		if (ticket == null) {
			return null;
		} else {
			Collection<Ticket> res = new ArrayList(1);
			res.add(ticket);
			return res;
		}

	}
	
	// Register a new user
	public void registerUser(User user) {
		em.persist(user);
	}
	
	// Return the User corresponding to the username and password (or null if they are not valid)
	public User check(String name, String password) {
		TypedQuery<User> req = em.createQuery("select user from User user where password='"+password+"' and name='"+name+"'", User.class);
		try {
			User user = req.getSingleResult();
			return user;
		} catch (NoResultException e) {
			return null;
		}
		
	}
	
	
	
}
