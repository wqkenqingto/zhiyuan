package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.Order;

public interface OrderService {
		
		public List<Order> getOrderService(String wayNum);

		public Order loadOrderService(Integer onumber);

		public void saveOrderService(Order order);
		
	
	
	
	
}
