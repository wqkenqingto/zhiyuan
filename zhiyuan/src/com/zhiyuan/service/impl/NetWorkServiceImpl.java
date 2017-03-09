package com.zhiyuan.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyuan.dao.NetWorkDao;
import com.zhiyuan.pojo.NetWork;
import com.zhiyuan.service.NetWorkService;
@Service("netWorkServiceImpl")
public class NetWorkServiceImpl implements NetWorkService {
			@Resource(name="netWorkDaoImpl")
			private NetWorkDao netWorkDaoImpl;

			@Override
			public List<NetWork> loadNetWork(NetWork netWork) {
				
				return 	netWorkDaoImpl.loadNetWorkById(netWork);
			}

			@Override
			public NetWork loadNetWorkByNidService(NetWork netWork) {
					
				return netWorkDaoImpl.loadNetWorkByNid(netWork);
			}
			
		
}
