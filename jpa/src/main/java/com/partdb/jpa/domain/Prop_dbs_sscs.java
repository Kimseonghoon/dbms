package com.partdb.jpa.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="PROP_DBS_SSCS")
public class Prop_dbs_sscs {
	@Id
	private int ndx;
	
	private String title;
	
	@Lob
	@Column(length=100000)
	private byte[] spec_data;
	
	private String why_needed;
	
	private String item_uuid;

	public int getNdx() {
		return ndx;
	}

	public void setNdx(int ndx) {
		this.ndx = ndx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public byte[] getSpec_data() {
		return spec_data;
	}

	public void setSpec_data(byte[] spec_data) {
		this.spec_data = spec_data;
	}

	public String getWhy_needed() {
		return why_needed;
	}

	public void setWhy_needed(String why_needed) {
		this.why_needed = why_needed;
	}

	public String getItem_uuid() {
		return item_uuid;
	}

	public void setItem_uuid(String item_uuid) {
		this.item_uuid = item_uuid;
	}
}
