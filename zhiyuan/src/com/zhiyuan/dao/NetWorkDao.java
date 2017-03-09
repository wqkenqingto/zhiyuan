package com.zhiyuan.dao;

import java.util.List;

import com.zhiyuan.pojo.NetWork;

public interface NetWorkDao {

	List<NetWork> loadNetWorkById(NetWork netWork);

	public  NetWork loadNetWorkByNid(NetWork netWork);

}
