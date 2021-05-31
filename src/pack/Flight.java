package pack;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Flight {
	@Id 
	private String fightNumber;
	
	private Time departmentTime;
	private Time arrivalTime;
	private int aircraftId;
	private String departmentAirportName;
	private String arrivalAirportName;
	

	@ManyToOne
	private Airport departmentAirport;
	
	@ManyToOne
	private Airport arrivalAirport;

	@OneToOne
	private Aircraft associated_aircraft;
	
	@OneToMany(mappedBy="ticket")
	private Collection<Ticket> tickets = new ArrayList<>();
	
	
	public String getFightNumber() {
		return fightNumber;
	}

	public void setFightNumber(String fightNumber) {
		this.fightNumber = fightNumber;
	}

	public Time getDepartmentTime() {
		return departmentTime;
	}

	public void setDepartmentTime(Time departmentTime) {
		this.departmentTime = departmentTime;
	}

	public Time getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(Time arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public int getAircraftId() {
		return aircraftId;
	}

	public void setAircraftId(int aircraftId) {
		this.aircraftId = aircraftId;
	}

	public String getDepartmentAirportName() {
		return departmentAirportName;
	}

	public void setDepartmentAirportName(String departmentAirportName) {
		this.departmentAirportName = departmentAirportName;
	}

	public String getArrivalAirportName() {
		return arrivalAirportName;
	}

	public void setArrivalAirportName(String arrivalAirportName) {
		this.arrivalAirportName = arrivalAirportName;
	}

	public Airport getDepartmentAirport() {
		return departmentAirport;
	}

	public void setDepartmentAirport(Airport departmentAirport) {
		this.departmentAirport = departmentAirport;
	}

	public Airport getArrivalAirport() {
		return arrivalAirport;
	}

	public void setArrivalAirport(Airport arrivalAirport) {
		this.arrivalAirport = arrivalAirport;
	}

	public Aircraft getAssociated_aircraft() {
		return associated_aircraft;
	}

	public void setAssociated_aircraft(Aircraft associated_aircraft) {
		this.associated_aircraft = associated_aircraft;
	}

	public Collection<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(Collection<Ticket> tickets) {
		this.tickets = tickets;
	}
}
