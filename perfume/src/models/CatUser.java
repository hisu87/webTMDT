package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class CatUser {
	private int id;
	private String catUser;
	private Boolean addquyen;
	private Boolean editquyen;
	private Boolean delquyen;
	
	public CatUser(String catUser) {
		super();
		this.catUser = catUser;
	}

	public CatUser(int id) {
		super();
		this.id = id;
	}

	public CatUser(int id, String catUser) {
		super();
		this.id = id;
		this.catUser = catUser;
	}

	public CatUser(int id, Boolean addquyen, Boolean editquyen, Boolean delquyen) {
		super();
		this.id = id;
		this.addquyen = addquyen;
		this.editquyen = editquyen;
		this.delquyen = delquyen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCatUser() {
		return catUser;
	}

	public void setCatUser(String catUser) {
		this.catUser = catUser;
	}

	public Boolean getAddquyen() {
		return addquyen;
	}

	public void setAddquyen(Boolean addquyen) {
		this.addquyen = addquyen;
	}

	public Boolean getEditquyen() {
		return editquyen;
	}

	public void setEditquyen(Boolean editquyen) {
		this.editquyen = editquyen;
	}

	public Boolean getDelquyen() {
		return delquyen;
	}

	public void setDelquyen(Boolean delquyen) {
		this.delquyen = delquyen;
	}
	
	
	
	
}
