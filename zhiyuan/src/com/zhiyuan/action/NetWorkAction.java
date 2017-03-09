package com.zhiyuan.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import sun.net.NetworkServer;

import com.zhiyuan.pojo.NetWork;
import com.zhiyuan.pojo.News;
import com.zhiyuan.service.NetWorkService;
import com.zhiyuan.service.NewsService;
@Controller("netWorkAction")
@Scope("prototype")
public class NetWorkAction  extends BaseAction{
		@Resource(name="netWorkServiceImpl")	
		private NetWorkService netWorkServiceImpl;
		private NetWork netWork;
		public NetWork getNetWork() {
			return netWork;
		}
		public void setNetWork(NetWork netWork) {
			this.netWork = netWork;
		}
		//----------------按cityId查出network集--------------
		public String loadNetWorkByCid(){
			System.out.println(netWork.getCityId()+"------------------");
		List<NetWork>netlist=netWorkServiceImpl.loadNetWork(netWork);
			req.put("netlist",netlist);
			return "loadnetok"; 
		}
		//----------------按nid来查询相应该网点-----------------
		public String loadNetWorkByNid(){
			System.out.println(netWork.getNid());
			netWork=netWorkServiceImpl.loadNetWorkByNidService(netWork);
			req.put("netWork",netWork);
			return "loadbynid";
		}
}
