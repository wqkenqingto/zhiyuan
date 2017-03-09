package com.zhiyuan.service.impl;

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
}
