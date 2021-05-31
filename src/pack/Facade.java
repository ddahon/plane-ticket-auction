package pack;

import java.util.Collection;
import java.util.Hashtable;

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
		TypedQuery<AuctionInfo> req = em.createQuery("select * from AuctionInfo", AuctionInfo.class) ;
		return req.getResultList();
	}
	
	// Perform the search
	public Collection<AuctionInfo> search(int ticketNumber) {
		TypedQuery<AuctionInfo> req = em.createQuery(String.format("select * from AuctionInfo where ticketNumber = '%d'", ticketNumber), AuctionInfo.class) ;
		return req.getResultList();
	}
	
	
	
}
