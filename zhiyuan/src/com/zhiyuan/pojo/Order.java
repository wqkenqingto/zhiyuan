package com.zhiyuan.pojo;

import java.util.Date;

public class Order {
	private Integer onumber;
	private Sender sender;
	private Reciever reciever;
	private String state;
	private String wayNum;
	private NetWork netWork;
	private Complaint complaint;
	private Date date;
	private String goodsName;
	private String remarks;
	private String weight;
	private String sumTotal;
	public Sender getSender() {
		return sender;
	}

	public void setSender(Sender sender) {
		this.sender = sender;
	}

	public Reciever getReciever() {
		return reciever;
	}

	public void setReciever(Reciever reciever) {
		this.reciever = reciever;
	}



	public String getWayNum() {
		return wayNum;
	}

	public void setWayNum(String wayNum) {
		this.wayNum = wayNum;
	}

	public NetWork getNetWork() {
		return netWork;
	}

	public void setNetWork(NetWork netWork) {
		this.netWork = netWork;
	}

	public Integer getOnumber() {
		return onumber;
	}

	public void setOnumber(Integer onumber) {
		this.onumber = onumber;
	}
	public Complaint getComplaint() {
		return complaint;
	}

	public void setComplaint(Complaint complaint) {
		this.complaint = complaint;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getSumTotal() {
		return sumTotal;
	}

	public void setSumTotal(String sumTotal) {
		this.sumTotal = sumTotal;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
}
