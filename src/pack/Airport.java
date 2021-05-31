package pack;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Airport {
	@Id
	private int id;
	
	private String name;
	private String city;
	private String address;
	
	@OneToMany(mappedBy="arrivalAirport")
	private Collection<Flight> arrivalFlights = new ArrayList<>();
	
	@OneToMany(mappedBy="departmentAirport")
	private Collection<Flight> departmentFlights = new ArrayList<>();
	

	public Collection<Flight> getArrivalFlights() {
		return arrivalFlights;
	}
	public void setArrivalFlights(Collection<Flight> arrivalFlights) {
		this.arrivalFlights = arrivalFlights;
	}
	public Collection<Flight> getDepartmentFlights() {
		return departmentFlights;
	}
	public void setDepartmentFlights(Collection<Flight> departmentFlights) {
		this.departmentFlights = departmentFlights;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
