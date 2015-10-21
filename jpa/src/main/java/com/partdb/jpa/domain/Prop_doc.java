package com.partdb.jpa.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PROP_DOC")
public class Prop_doc {
	@Id
	private int ndx;
	
	private int ref_id;
	
	private String ref_title;
	
	private String chapter_no;
	
	private String chapter_name;
	
	private String chapter_page;
	
	private String item_uuid;

	public int getNdx() {
		return ndx;
	}

	public void setNdx(int ndx) {
		this.ndx = ndx;
	}

	public int getRef_id() {
		return ref_id;
	}

	public void setRef_id(int ref_id) {
		this.ref_id = ref_id;
	}

	public String getRef_title() {
		return ref_title;
	}

	public void setRef_title(String ref_title) {
		this.ref_title = ref_title;
	}

	public String getChapter_no() {
		return chapter_no;
	}

	public void setChapter_no(String chapter_no) {
		this.chapter_no = chapter_no;
	}

	public String getChapter_name() {
		return chapter_name;
	}

	public void setChapter_name(String chapter_name) {
		this.chapter_name = chapter_name;
	}

	public String getChapter_page() {
		return chapter_page;
	}

	public void setChapter_page(String chapter_page) {
		this.chapter_page = chapter_page;
	}

	public String getItem_uuid() {
		return item_uuid;
	}

	public void setItem_uuid(String item_uuid) {
		this.item_uuid = item_uuid;
	}
	
}