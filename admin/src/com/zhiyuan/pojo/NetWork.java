package com.zhiyuan.pojo;

import java.util.List;
import java.util.Set;

public class NetWork {
	private Integer nid;
	private String naddress;
	private String nname;
	private String contact;
	private Integer cityId;
	private String owner;
	private Set<Order>sorders;
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public String getNaddress() {
		return naddress;
	}

	public void setNaddress(String naddress) {
		this.naddress = naddress;
	}

	public String getNname() {
		return nname;
	}

	public void setNname(String nname) {
		this.nname = nname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public Set<Order> getSorders() {
		return sorders;
	}
	public void setSorders(Set<Order> sorders) {
		this.sorders = sorders;
	}
	
	
}
