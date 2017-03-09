package com.zhiyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.testng.annotations.Test;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyuan.dao.OrderDao;
import com.zhiyuan.pojo.Order;
@Repository("orderDaoImpl")
public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {	
	@Resource
	public void setSessionFactory01(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Order> getOrderList(String wayNum) {
		String hql="from Order where wayNum="+wayNum;
		Query query=super.getSession().createQuery(hql);
		List<Order>olist =query.list();
		return olist;
	}
	@Override
	public Order loadOrderList(Integer onumber) {
		Order order = (Order) super.getSession().get(Order.class, onumber);
		return order;
	}
	@Override
	public void saveOrder(Order order) {
			super.getSession().save(order);
	}

}
