package com.zhiyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyuan.dao.ComplaintDao;
import com.zhiyuan.pojo.Complaint;
@Repository("complaintDaoImpl")
public class ComplaintDaoImpl extends HibernateDaoSupport implements ComplaintDao {
	@Resource
	public void setSessionFactory01(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	public void saveCompliant(Complaint complaint) {
			System.out.println("进入了complaintDao中--------");
			super.getSession().save(complaint);
	}
	@Override
	public List<Complaint> loadComplaints() {

    Criteria criteria= super.getSession().createCriteria(Complaint.class);
		List<Complaint>clist=criteria.list();
		return clist;
	}
	@Override
	public Complaint getComplainterd(Complaint complaint) {
			complaint=(Complaint) super.getSession().get(Complaint.class,complaint.getCnumber());
		return complaint;
	}
	@Override
	public void delComplaintd(Complaint complaint) {
			super.getSession().delete(complaint);
	}
}
