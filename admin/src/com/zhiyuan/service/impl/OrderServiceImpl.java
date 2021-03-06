package com.zhiyuan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyuan.dao.OrderDao;
import com.zhiyuan.pojo.Order;
import com.zhiyuan.pojo.Sender;
import com.zhiyuan.service.OrderService;

@Service("orderServiceImpl")
public class OrderServiceImpl implements OrderService {
	@Resource(name="orderDaoImpl")
	private OrderDao orderDaoImpl;

	@Override
	public List<Order> getOrderService(String wayNum) {
		return orderDaoImpl.getOrderList(wayNum);
	}

	@Override
	public Order  loadOrderService(Integer onumber) {
			
		return orderDaoImpl.loadOrderList( onumber);
	}

	@Override
	public List<Order> getOrderAllService() {

		return orderDaoImpl.loadOrderList();
	}

	@Override
	public void delOrderByOnumber(Order order) {
			orderDaoImpl.delOrder(order);
	}

	@Override
	public void saveOrderService(Order order) {
			orderDaoImpl.saveOrder(order);
	}

	@Override
	public void updateOrdersService(Order order) {
			orderDaoImpl.updateOrder(order);
	}



}
