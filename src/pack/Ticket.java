package pack;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Ticket {

	@Id
	private int ticketNumber;
	
	private int userID;
	private float price;

	private String airlineName;
	
	@ManyToOne(cascade = {CascadeType.ALL})
	private Flight flight; 
	
	@ManyToOne
	private User owner;
	
	@OneToOne
	private TransactionInfo transactionInfo;
	
	@OneToOne
	private Airline originalSeller;
	
	@OneToOne
	private AuctionInfo auction;

	
	
	/**** Getters and Setters ****/
	public int getTicketNumber() {
		return ticketNumber;
	}

	public void setTicketNumber(int ticketNumber) {
		this.ticketNumber = ticketNumber;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

	public String getAirlineName() {
		return airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}

	public Airline getOriginalSeller() {
		return originalSeller;
	}

	public void setOriginalSeller(Airline originalSeller) {
		this.originalSeller = originalSeller;
	}

	public AuctionInfo getAuction() {
		return auction;
	}

	public void setAuction(AuctionInfo auction) {
		this.auction = auction;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	public TransactionInfo getTransactionInfo() {
		return transactionInfo;
	}

	public void setTransactionInfo(TransactionInfo transactionInfo) {
		this.transactionInfo = transactionInfo;
	}
	
	
}
