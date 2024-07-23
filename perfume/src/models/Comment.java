package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Comment {
	private int id;
	private String name_comment;
	private String create_comment;
	private String message;
	private int id_per;
	
	public Comment(int id, String name_comment, String message) {
		super();
		this.id = id;
		this.name_comment = name_comment;
		this.message = message;
	}

	public Comment(String name_comment, String create_comment, String message) {
		super();
		this.name_comment = name_comment;
		this.create_comment = create_comment;
		this.message = message;
	}

	public Comment(String name_comment, String message, int id_per) {
		super();
		this.name_comment = name_comment;
		this.message = message;
		this.id_per = id_per;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName_comment() {
		return name_comment;
	}

	public void setName_comment(String name_comment) {
		this.name_comment = name_comment;
	}

	public String getCreate_comment() {
		return create_comment;
	}

	public void setCreate_comment(String create_comment) {
		this.create_comment = create_comment;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getId_per() {
		return id_per;
	}

	public void setId_per(int id_per) {
		this.id_per = id_per;
	}
	
	
}
