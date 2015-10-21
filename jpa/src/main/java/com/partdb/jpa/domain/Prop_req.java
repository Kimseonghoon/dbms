package com.partdb.jpa.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="PROP_REQ")
public class Prop_req {

	@Id
	private int ndx;
	
	private String title;
	
	@Lob
	@Column(length=100000)
	private byte[] req_data;
	
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

	public byte[] getReq_data() {
		return req_data;
	}

	public void setReq_data(byte[] req_data) {
		this.req_data = req_data;
	}

	public String getItem_uuid() {
		return item_uuid;
	}

	public void setItem_uuid(String item_uuid) {
		this.item_uuid = item_uuid;
	}
	
}
