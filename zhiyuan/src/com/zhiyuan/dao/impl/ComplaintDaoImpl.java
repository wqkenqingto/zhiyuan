package com.zhiyuan.dao.impl;

import javax.annotation.Resource;

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
}
