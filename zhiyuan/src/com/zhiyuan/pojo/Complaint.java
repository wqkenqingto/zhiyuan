package com.zhiyuan.pojo;

import java.util.Date;

public class Complaint {
	private Integer cnumber;
	private String theme;
	private String content;
	private Date date;
	private Order order;
	private String cname;
	private String contact;
	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	

	public Integer getCnumber() {
		return cnumber;
	}

	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}


}
