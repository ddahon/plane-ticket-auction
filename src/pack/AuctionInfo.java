package pack;

import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class AuctionInfo {
	
	@Id
	private int ticketNumber;
	
	private Date deadline;
	private String info;
	
	@OneToOne
	private Ticket ticket;
	
	@OneToMany(cascade=CascadeType.REMOVE,  fetch=FetchType.EAGER)
	private Collection<AuctionApplication> applications;

	
	
	
	
	/**** Getters and Setters ****/
	public int getTicketNumber() {
		return ticketNumber;
	}

	public void setTicketNumber(int ticketNumber) {
		this.ticketNumber = ticketNumber;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public Collection<AuctionApplication> getApplications() {
		return applications;
	}

	public void setApplications(Collection<AuctionApplication> applications) {
		this.applications = applications;
	}
}
