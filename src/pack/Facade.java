package pack;

import java.awt.List;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.LinkedList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
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
	
	// Get the auction info corresponding to the ticket number
	public AuctionInfo getAuctionInfo(int ticketNumber) {
		return em.find(AuctionInfo.class, ticketNumber);
	}
	
	// Get all the auctions
	public Collection<AuctionInfo> getAllAuctions() {
		TypedQuery<AuctionInfo> req = em.createQuery("select info from AuctionInfo info", AuctionInfo.class) ;
		return req.getResultList();
	}
	
	// Perform the search
	public Collection<AuctionInfo> searchByNumber(int ticketNumber) {
		AuctionInfo auction = em.find(AuctionInfo.class, ticketNumber);
		if (auction == null) {
			return null;
		} else {
			Collection<AuctionInfo> res = new ArrayList(1);
			res.add(auction);
			return res;
		}

	}
	
	
	
}
