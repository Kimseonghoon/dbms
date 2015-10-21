package com.partdb.jpa.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PARAM")
public class Param {
	@Id
	private int ndx;
	
	private String name;
	
	private String prop_name;
	
	private String prop_value;
	
	private String prop_unit;
	
	private String item_uuid;

	public int getNdx() {
		return ndx;
	}

	public void setNdx(int ndx) {
		this.ndx = ndx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProp_name() {
		return prop_name;
	}

	public void setProp_name(String prop_name) {
		this.prop_name = prop_name;
	}

	public String getProp_value() {
		return prop_value;
	}

	public void setProp_value(String prop_value) {
		this.prop_value = prop_value;
	}

	public String getProp_unit() {
		return prop_unit;
	}

	public void setProp_unit(String prop_unit) {
		this.prop_unit = prop_unit;
	}

	public String getItem_uuid() {
		return item_uuid;
	}

	public void setItem_uuid(String item_uuid) {
		this.item_uuid = item_uuid;
	}
	

}
