package com.zhiyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import sun.net.NetworkServer;

import com.zhiyuan.dao.NetWorkDao;
import com.zhiyuan.pojo.NetWork;
@Repository("netWorkDaoImpl")
public class NetWorkDaoImpl extends HibernateDaoSupport implements NetWorkDao {
	@Resource
	public void setSessionFactory01(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public List<NetWork> loadNetWorkById(NetWork netWork) {
			String hql="from NetWork where cityId="+netWork.getCityId();
			Query query=super.getSession().createQuery(hql);
			List<NetWork>netlist=query.list();
		return netlist;
	}

	@Override
	public NetWork loadNetWorkByNid(NetWork netWork) {
			netWork= (NetWork) super.getSession().get(NetWork.class,netWork.getNid());
		return netWork;
	}
	
	
}
