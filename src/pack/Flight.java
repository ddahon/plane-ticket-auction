package pack;

import java.sql.Time;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Flight {
	@Id 
	@GeneratedValue(strategy=
	GenerationType.IDENTITY)
	private String flightNumber;
	private LocalDate departureDate;
	private ZonedDateTime departmentTime;
	private ZonedDateTime arrivalTime;
	private int aircraftId;
	private String departmentAirportName;
	private String arrivalAirportName;
	

	@ManyToOne
	private Airport departmentAirport;
	
	@ManyToOne
	private Airport arrivalAirport;

	@OneToOne
	private Aircraft associated_aircraft;
	
	@OneToMany(mappedBy="flight")
	private Collection<Ticket> tickets = new ArrayList<>();
	
	
	public String getFightNumber() {
		return flightNumber;
	}

	public void setFightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}
	
	public ZonedDateTime getDepartmentTime() {
		return departmentTime;
	}

	public void setDepartmentTime(ZonedDateTime departmentTime) {
		this.departmentTime = departmentTime;
	}

	public ZonedDateTime getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(ZonedDateTime arrivalTime) {
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

	public LocalDate getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(LocalDate departureDate) {
		this.departureDate = departureDate;
	}
}
