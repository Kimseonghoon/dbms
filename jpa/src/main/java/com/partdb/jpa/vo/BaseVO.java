package com.partdb.jpa.vo;

public abstract class BaseVO {
	private String uuid;
	private String name;
	private String desc;
	
	/*public BaseVO() {}*/
	
	public BaseVO(String uuid, String name, String desc) {		
		this.uuid = uuid;
		this.name = name;
		this.desc = desc;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
}
