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

	public void addAuctionInfo(AuctionInfo info) {
		em.persist(info);
	}
	
	public AuctionInfo getAuctionInfo(int ticketNumber) {
		return em.find(AuctionInfo.class, ticketNumber);
	}
	
	public Collection<Integer> getAllTicketNumbers() {
		TypedQuery<Integer> req = em.createQuery("select ticketNumber from AuctionInfo", Integer.class) ;
		return req.getResultList();
	}
	
	
	
}
