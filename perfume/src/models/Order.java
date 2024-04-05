package models;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Order implements Serializable {
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getCustomer() {
		return customer;
	}

	public void setCustomer(User customer) {
		this.customer = customer;
	}

	public List<Item> getItem() {
		return item;
	}

	public void setItem(List<Item> item) {
		this.item = item;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	private int id;
	private User customer;
	private List<Item> item;
	private Boolean status;
	private String phone;
	private String email;
	private String adress;
	private String note;
	
	public Order(User customer, String phone, String email, String adress, String note) {
		super();
		this.customer = customer;
		this.phone = phone;
		this.email = email;
		this.adress = adress;
		this.note = note;
	}

	public Order(int id) {
		super();
		this.id = id;
	}

	public Order(int id, User customer, Boolean status, String phone, String email, String adress, String note) {
		super();
		this.id = id;
		this.customer = customer;
		this.status = status;
		this.phone = phone;
		this.email = email;
		this.adress = adress;
		this.note = note;
	}

	public Order(int id, Boolean status) {
		super();
		this.id = id;
		this.status = status;
	}

	
}
