package com.partdb.jpa.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PROP_SDI")
public class Prop_sdi {
	
	private int ndx;
	
	@Column(name="why_sdi_needed")
	private String why_sdi_needed;
	
	@Id
	private String item_uuid;

	public int getNdx() {
		return ndx;
	}

	public void setNdx(int ndx) {
		this.ndx = ndx;
	}

	public String getWhy_sdi_needed() {
		return why_sdi_needed;
	}

	public void setWhy_sdi_needed(String why_sdi_needed) {
		this.why_sdi_needed = why_sdi_needed;
	}

	public String getItem_uuid() {
		return item_uuid;
	}

	public void setItem_uuid(String item_uuid) {
		this.item_uuid = item_uuid;
	}
}