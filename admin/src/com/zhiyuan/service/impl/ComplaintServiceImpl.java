package com.zhiyuan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyuan.dao.ComplaintDao;
import com.zhiyuan.pojo.Complaint;
import com.zhiyuan.service.ComplaintService;

@Service("complaintServiceImpl")
public class ComplaintServiceImpl implements ComplaintService {
	@Resource(name = "complaintDaoImpl")
	private ComplaintDao complaintDaoImpl;
	@Override
	public void saveComplaintService(Complaint complaint) {
		complaintDaoImpl.saveCompliant(complaint);		
	}
	@Override
	public List<Complaint> loadAllComplaint() {
		
		return complaintDaoImpl.loadComplaints();
	}
	@Override
	public Complaint getComplainter(Complaint complaint) {
		
		return complaintDaoImpl.getComplainterd(complaint);
	}
	@Override
	public void delComplaint(Complaint complaint) {
				complaintDaoImpl.delComplaintd(complaint);
	}
}
