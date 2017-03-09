package com.zhiyuan.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zhiyuan.pojo.NetWork;
import com.zhiyuan.pojo.Order;
import com.zhiyuan.pojo.Reciever;
import com.zhiyuan.pojo.Sender;
import com.zhiyuan.service.NetWorkService;
import com.zhiyuan.service.OrderService;

@Controller("orderAction")
@Scope("prototype")
public class OrderAction extends BaseAction {
	@Resource(name = "orderServiceImpl")
	private OrderService orderServiceImpl;
	private Order order;
	private NetWork netWork;
	@Resource(name="netWorkServiceImpl")
	private NetWorkService netWorkServiceImpl;
	/*private Sender sender;
	private Reciever reciever;*/
	public NetWork getNetWork() {
		return netWork;
	}

	public void setNetWork(NetWork netWork) {
		this.netWork = netWork;
	}
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	/*public Sender getSender() {
		return sender;
	}

	public void setSender(Sender sender) {
		this.sender = sender;
	}*/

	/*public Reciever getReciever() {
		return reciever;
	}

	public void setReciever(Reciever reciever) {
		this.reciever = reciever;
	}*/
	// ��ȡ������Ϣ
	public String getOrderInfo() {
		List<Order> olist = new ArrayList<Order>();
		if (order.getWayNum() != null) {
			System.out.println(order.getWayNum());
			System.out.println("������orderAction");
			olist = orderServiceImpl.getOrderService(order.getWayNum());
			System.out.println("��ѯ����");
			for (Order order : olist) {
				// System.out.println("����Ͷ�߲���------------"+order.getComplaint().getContent());
				System.out.println("---------------------------"
						+ order.getWayNum());
				System.out.println("------------------------"
						+ order.getReciever().getRid());
				System.out.println("------------------------"
						+ order.getSender().getSid());
				if(order.getNetWork().getNname().equals(order.getReciever().getRnetwork())){
					order.setState("已送达");
				}else {
					order.setState("在途中");
				}
			}
			// ��ҳ�����Ϣ
			req.put("olist", olist);
			return "success";
		} else if (order.getOnumber() != null) {
			order = orderServiceImpl.loadOrderService(order.getOnumber());
			// System.out.println("����Ͷ�߲���------------"+order.getComplaint().getContent());
			System.out.println("---------------------------"
					+ order.getWayNum());
			System.out.println("------------------------"
					+ order.getReciever().getRid());
			System.out.println("------------------------"
					+ order.getSender().getSid());
			if(order.getNetWork().getNname().equals(order.getReciever().getRnetwork())){
				order.setState("已送达");
			}else {
				order.setState("在途中");
			}
			req.put("order", order);
		}
		return "success1";
	}

	// ---------------------添加订单--------------------------------------
	public String saveOrders() {
		Date date = new Date();
		System.out.println(order.getWeight()+"---------------------------");
		Integer sumTotal = 5 * Integer.parseInt(order.getWeight());
		order.setSumTotal(sumTotal.toString());
		order.setDate(date);
		String wayNum="111";
		long time=System.currentTimeMillis();
		wayNum=wayNum+time;
		order.setWayNum(wayNum);
		System.out.println(netWork.getNid()+"----------------------");
		 netWork=netWorkServiceImpl.loadNetWorkByNidService(netWork);
		order.setNetWork(netWork);
		orderServiceImpl.saveOrderService(order);
		return "saveok";
	}

	

	
}