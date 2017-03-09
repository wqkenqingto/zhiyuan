package com.zhiyuan.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zhiyuan.pojo.Complaint;
import com.zhiyuan.pojo.Order;
import com.zhiyuan.service.ComplaintService;

@Controller("complaintAction")
@Scope("prototype")
public class ComplaintAction extends BaseAction {
	@Resource(name = "complaintServiceImpl")
	private ComplaintService complaintServiceImpl;
	private Complaint complaint;
	private Order order;
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	public Complaint getComplaint() {
		return complaint;
	}

	public void setComplaint(Complaint complaint) {
		this.complaint = complaint;
	}
	//--------------------����Ͷ��-------------------------
	public String saveComplaint() {
		System.out.println("������complaintAction---------------------");
		Date date = new Date();
		if(order.getOnumber()!=null){
		complaint.setOrder(order);}
		complaint.setDate(date);
		complaintServiceImpl.saveComplaintService(complaint);
		return "success";
	}
	//-------------------����Ͷ��---------------------------
	public String loadComplaint(){
	List<Complaint>	clist=complaintServiceImpl.loadAllComplaint();
		req.put("clist",clist);
		return "loadok";
	}
	//-----------------����Ͷ���ߵĶ�����Ϣ--------------------
	public String getComplainter(){
		complaint=complaintServiceImpl.getComplainter(complaint);
		req.put("complaint",complaint);
		return "getok";
	}
	//----------------ɾ��Ͷ�ߵ���Ϣ---------------------------
	public void delComplaint(){
		complaintServiceImpl.delComplaint(complaint);
	}
}
