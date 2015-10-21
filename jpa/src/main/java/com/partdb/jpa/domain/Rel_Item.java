package com.partdb.jpa.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="REL_ITEM")
public class Rel_Item {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int ndx;
	
	@Column
	private int rel_type;
	
	@Column
	private String plant_code;
		
	@Column
	private String base_item_uuid;
	
	@Column
	private String target_item_uuid;

	public int getNdx() {
		return ndx;
	}

	public void setNdx(int ndx) {
		this.ndx = ndx;
	}

	public int getRel_type() {
		return rel_type;
	}

	public void setRel_type(int rel_type) {
		this.rel_type = rel_type;
	}

	public String getPlant_code() {
		return plant_code;
	}

	public void setPlant_code(String plant_code) {
		this.plant_code = plant_code;
	}

	public String getBase_item_uuid() {
		return base_item_uuid;
	}

	public void setBase_item_uuid(String base_item_uuid) {
		this.base_item_uuid = base_item_uuid;
	}

	public String getTarget_item_uuid() {
		return target_item_uuid;
	}

	public void setTarget_item_uuid(String target_item_uuid) {
		this.target_item_uuid = target_item_uuid;
	}
	
	
}
