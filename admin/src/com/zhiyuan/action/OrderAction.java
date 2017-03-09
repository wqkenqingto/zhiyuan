package com.zhiyuan.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zhiyuan.dao.impl.OrderDaoImpl;
import com.zhiyuan.pojo.Order;
import com.zhiyuan.pojo.Reciever;
import com.zhiyuan.pojo.Sender;
import com.zhiyuan.service.OrderService;
	@Controller("orderAction")
	@Scope("prototype")
public class OrderAction extends BaseAction {
			@Resource(name="orderServiceImpl")
				private OrderService orderServiceImpl;
				private Order order;
				private Sender sender;
				private Reciever reciever;
				public Sender getSender() {
					return sender;
				}
				public void setSender(Sender sender) {
					this.sender = sender;
				}
				public Reciever getReciever() {
					return reciever;
				}
				public void setReciever(Reciever reciever) {
					this.reciever = reciever;
				}
				public Order getOrder() {
				return order;
				}
				public void setOrder(Order order) {
				this.order = order;
				}
			//--------------获取订单信息-------------------//
			public String getOrderInfo(){
				List<Order>olist=	orderServiceImpl.getOrderAllService();
				req.put("olist", olist);
				return "success";	
			}	
			//-----------------------删除订单通过订单号-----------------------------
			public String deleteOrderByOnumber(){
				System.out.println("进入了删除action");
				orderServiceImpl.delOrderByOnumber(order);
				
				return "gotoload";		
			}
			//---------------------添加订单--------------------------------------
			public String saveOrders(){
				Date date=new Date();
				Integer sumTotal=5 * Integer.parseInt(order.getWeight()); 
				order.setSumTotal(sumTotal.toString());
				order.setDate(date);
				Sender sender=new Sender();
				Reciever reciever=new Reciever();
				order.setSender(sender);
				order.setReciever(reciever);
				orderServiceImpl.saveOrderService(order);
				return "saveok";
			}
			//------------------修改订单--------------------------------------------
			public void updateOrders() throws IOException{
				Date date=new Date();
				Integer sumTotal=5 * Integer.parseInt(order.getWeight()); 
				order.setSumTotal(sumTotal.toString());
				order.setDate(date);
				orderServiceImpl.updateOrdersService(order);		
				HttpServletResponse response = ServletActionContext.getResponse();
				response.getWriter().write("<script type=\"text/javascript\">var index = parent.layer.getFrameIndex(window.name); parent.layer.close(index);</script>");
				
			}
			//----------------根据运单号和订单号查询——----------------------------------
			public String getOrderInfos() {
				List<Order> olist = new ArrayList<Order>();
				if (order.getWayNum() != null) {
					olist = orderServiceImpl.getOrderService(order.getWayNum());
					for (Order order : olist) {
						if(order.getNetWork().getNname().equals(order.getReciever().getRnetwork())){
							order.setState("已送达");
						}else {
							order.setState("在途中");
						}
					}
					req.put("olist", olist);
					return "success";
				} else if (order.getOnumber() != null) {
					order = orderServiceImpl.loadOrderService(order.getOnumber());
					if(order.getNetWork().getNname().equals(order.getReciever().getRnetwork())){
						order.setState("已送达");
					}else {
						order.setState("在途中");
					}
					req.put("order", order);
				}
				return "success1";
			}
			//--------------------------获取单个sender--------------------------
		    	public String  getSenderPage(){
		    	order=orderServiceImpl.loadOrderService(order.getOnumber());
		    	req.put("order",order);
		    	return "senderpage";
		    	}
		   //--------------------------获取单个reciever--------------
		    	public String getRecieverPage(){
		    		order=orderServiceImpl.loadOrderService(order.getOnumber());
			    	req.put("order",order);
			    	return "recieverpage";
		    	}
}