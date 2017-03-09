package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.Order;
import com.zhiyuan.pojo.Sender;

public interface OrderService {
		
		public List<Order> getOrderService(String wayNum);

		public Order loadOrderService(Integer onumber);
		
		public  List<Order> getOrderAllService();

//		public void delOrderByOnumber(Integer onumber);

		public void delOrderByOnumber(Order order);

		public void saveOrderService(Order order);

		public void updateOrdersService(Order order);


	
	
	
}
