package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.NetWork;

public interface NetWorkService {

	List<NetWork> loadNetWork(NetWork netWork);

	 public  NetWork loadNetWorkByNidService(NetWork netWork);

}
