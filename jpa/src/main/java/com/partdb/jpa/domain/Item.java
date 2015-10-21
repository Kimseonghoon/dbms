package com.partdb.jpa.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="ITEM")
public class Item {
	
	@Id
	@Column(name="item_uuid", nullable=false)
	private String item_uuid;
	
	private String item_group;
	
	private String item_id;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int seq;
	
	private int ver;
	
	private String type;
	
	private String system_code;
	
	private String plant_code;
	
	@Lob
	private String item_description;
	
	@Temporal(TemporalType.DATE)
	private Date createdate;
	
	public String getItem_uuid() {
		return item_uuid;
	}

	public void setItem_uuid(String item_uuid) {
		this.item_uuid = item_uuid;
	}

	public String getItem_group() {
		return item_group;
	}

	public void setItem_group(String item_group) {
		this.item_group = item_group;
	}

	public String getItem_id() {
		return item_id;
	}

	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getVer() {
		return ver;
	}

	public void setVer(int ver) {
		this.ver = ver;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSystem_code() {
		return system_code;
	}

	public void setSystem_code(String system_code) {
		this.system_code = system_code;
	}

	public String getPlant_code() {
		return plant_code;
	}

	public void setPlant_code(String plant_code) {
		this.plant_code = plant_code;
	}

	public String getItem_description() {
		return item_description;
	}

	public void setItem_description(String item_description) {
		this.item_description = item_description;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	
}
