package pack;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
public class Aircraft {
	@Id
	private int id;
	
	private String model;
	private Date serviceStart;
	private String airlineName;
	
	@ManyToOne
	private Airline owner;

	@OneToOne(mappedBy="associated_aircraft")
	private Flight flight;
	
	
	public String getAirlineName() {
		return airlineName;
	}
	
	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Date getServiceStart() {
		return serviceStart;
	}

	public void setServiceStart(Date serviceStart) {
		this.serviceStart = serviceStart;
	}

	public Airline getOwner() {
		return owner;
	}

	public void setOwner(Airline owner) {
		this.owner = owner;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

}
