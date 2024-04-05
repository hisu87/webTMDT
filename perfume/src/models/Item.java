package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
	private int id;
	private Perfume product;
	private int quantity;
	private long price;
	private Order order;
	
	public Item(int id) {
		super();
		this.id = id;
	}

	public Item(Perfume product, int quantity, long price, Order order) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.order = order;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Perfume getProduct() {
		return product;
	}

	public void setProduct(Perfume product) {
		this.product = product;
	}

	public void setPrice(long money) {
		// TODO Auto-generated method stub
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public long getPrice() {
		return price;
	}
	
	
	

	
}
