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
	//--------------------保存投诉-------------------------
	public String saveComplaint() {
		System.out.println("进入了complaintAction---------------------");
		Date date = new Date();
		if(order.getOnumber()!=null){
		complaint.setOrder(order);}
		complaint.setDate(date);
		complaintServiceImpl.saveComplaintService(complaint);
		return "success";
	}
	//-------------------加载投诉---------------------------
	public String loadComplaint(){
	List<Complaint>	clist=complaintServiceImpl.loadAllComplaint();
		req.put("clist",clist);
		return "loadok";
	}
	//-----------------加载投诉者的订单信息--------------------
	public String getComplainter(){
		complaint=complaintServiceImpl.getComplainter(complaint);
		req.put("complaint",complaint);
		return "getok";
	}
	//----------------删除投诉单信息---------------------------
	public void delComplaint(){
		complaintServiceImpl.delComplaint(complaint);
	}
}
