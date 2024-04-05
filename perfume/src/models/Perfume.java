package models;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Perfume {
	private int id;
	private String perfumes;
	private String description;
	private String detail;
	private String brand;
	private String made;
	private String capacity;
	private String codePerfume;
	private int amount;
	private long money;
	private int evaluate;
	private Timestamp create_date;
	private int views;
	CatPerfume catPer;
	
	public Perfume(int id, String perfumes, String brand, int amount, long money, CatPerfume catPer) {
		super();
		this.id = id;
		this.perfumes = perfumes;
		this.brand = brand;
		this.amount = amount;
		this.money = money;
		this.catPer = catPer;
	}
	public Perfume(int id) {
		super();
		this.id = id;
	}
	
	/*
	 * public Perfume(String perfumes, String description, String detail, String
	 * brand, String made, String capacity, String codePerfume, int amount, long
	 * money, List<String> arpic, CatPerfume catPer) { super(); this.perfumes =
	 * perfumes; this.description = description; this.detail = detail; this.brand =
	 * brand; this.made = made; this.capacity = capacity; this.codePerfume =
	 * codePerfume; this.amount = amount; this.money = money; this.arpic = arpic;
	 * this.catPer = catPer; }
	 */
	/*
	 * public Perfume(int id, String perfumes, String description, String detail,
	 * String brand, String made, String capacity, String codePerfume, int amount,
	 * long money, int evaluate, Timestamp create_date, int views, CatPerfume
	 * catPer) { super(); this.id = id; this.perfumes = perfumes; this.description =
	 * description; this.detail = detail; this.brand = brand; this.made = made;
	 * this.capacity = capacity; this.codePerfume = codePerfume; this.amount =
	 * amount; this.money = money; this.evaluate = evaluate; this.create_date =
	 * create_date; this.views = views; this.catPer = catPer; }
	 */
	public Perfume(int id, String perfumes, String description, String detail, String brand, String made,
			String capacity, String codePerfume, int amount, long money, CatPerfume catPer) {
		super();
		this.id = id;
		this.perfumes = perfumes;
		this.description = description;
		this.detail = detail;
		this.brand = brand;
		this.made = made;
		this.capacity = capacity;
		this.codePerfume = codePerfume;
		this.amount = amount;
		this.money = money;
		this.catPer = catPer;
	}
	public Perfume(String perfumes, String description, String detail, String brand, String made, String capacity,
			String codePerfume, int amount, long money, CatPerfume catPer) {
		super();
		this.perfumes = perfumes;
		this.description = description;
		this.detail = detail;
		this.brand = brand;
		this.made = made;
		this.capacity = capacity;
		this.codePerfume = codePerfume;
		this.amount = amount;
		this.money = money;
		this.catPer = catPer;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPerfumes() {
		return perfumes;
	}
	public void setPerfumes(String perfumes) {
		this.perfumes = perfumes;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getMade() {
		return made;
	}
	public void setMade(String made) {
		this.made = made;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getCodePerfume() {
		return codePerfume;
	}
	public void setCodePerfume(String codePerfume) {
		this.codePerfume = codePerfume;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public long getMoney() {
		return money;
	}
	public void setMoney(long money) {
		this.money = money;
	}
	public int getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(int evaluate) {
		this.evaluate = evaluate;
	}
	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public CatPerfume getCatPer() {
		return catPer;
	}
	public void setCatPer(CatPerfume catPer) {
		this.catPer = catPer;
	}
	
	public CatPerfume getCatPerfume() {
		return catPer;
	}
	public void setCatPerfume(CatPerfume catPer) {
		this.catPer = catPer;
	}
	
	
	
	
	
}
