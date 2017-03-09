package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.Complaint;

public interface ComplaintService {
			public void saveComplaintService(Complaint complaint);

			public List<Complaint> loadAllComplaint();

			public Complaint getComplainter(Complaint complaint);

			public void delComplaint(Complaint complaint);	
}
