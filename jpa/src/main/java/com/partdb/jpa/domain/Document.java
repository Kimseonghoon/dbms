package com.partdb.jpa.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DOCUMENT")
public class Document {
	
	@Id
	private int ndx;
	
	private String plant_code;
	
	private String no;
	
	private String name;
	
	private String rev;
	
	private String type;
	
	private String is_ref;
	
	private String file_name;
	
	private String file_data;

	public int getNdx() {
		return ndx;
	}

	public void setNdx(int ndx) {
		this.ndx = ndx;
	}

	public String getPlant_code() {
		return plant_code;
	}

	public void setPlant_code(String plant_code) {
		this.plant_code = plant_code;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRev() {
		return rev;
	}

	public void setRev(String rev) {
		this.rev = rev;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIs_ref() {
		return is_ref;
	}

	public void setIs_ref(String is_ref) {
		this.is_ref = is_ref;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_data() {
		return file_data;
	}

	public void setFile_data(String file_data) {
		this.file_data = file_data;
	}
	
	
}
