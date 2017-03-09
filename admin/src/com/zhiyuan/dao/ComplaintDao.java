package com.zhiyuan.dao;

import java.util.List;

import com.zhiyuan.pojo.Complaint;

public interface ComplaintDao {
	public void saveCompliant(Complaint complaint);

	public List<Complaint> loadComplaints();

	public Complaint getComplainterd(Complaint complaint);

	public void delComplaintd(Complaint complaint);		
}
