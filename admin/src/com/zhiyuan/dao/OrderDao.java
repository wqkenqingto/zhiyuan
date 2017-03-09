package com.zhiyuan.dao;

import java.util.List;

import com.zhiyuan.pojo.Order;

public interface OrderDao {
		public List<Order>getOrderList(String wayNum);

		public Order loadOrderList(Integer onumber);
		public List<Order>loadOrderList();

		public void delOrder(Order order);

		public void saveOrder(Order order);

		public void updateOrder(Order order);
}
