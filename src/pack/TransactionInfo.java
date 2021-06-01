package pack;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class TransactionInfo {
	@Id
	@GeneratedValue(strategy=
					GenerationType.IDENTITY)
	private int id;
	
	private int purchaserId;
	private int sellerId;
	private int price;
	
	@OneToOne
	private User purchaser;
	
	@OneToOne 
	private User seller;
	

	public int getPurchaserId() {
		return purchaserId;
	}

	public void setPurchaserId(int purchaserId) {
		this.purchaserId = purchaserId;
	}

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public User getPurchaser() {
		return purchaser;
	}

	public void setPurchaser(User purchaser) {
		this.purchaser = purchaser;
	}

	public User getSeller() {
		return seller;
	}

	public void setSeller(User seller) {
		this.seller = seller;
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
