package com.zhiyuan.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements RequestAware,
	SessionAware,
	ApplicationAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//相当于javaee中的request，session，application，由struts2框架完成初始�?
	//对应的setXxx由struts2框架自动调用
	protected Map<String,Object> req;
	protected Map<String,Object> sin;
	protected Map<String,Object> app;

	public void setApplication(Map<String, Object> app) {
		// TODO Auto-generated method stub
		//ActionContext
		this.app=app;
	}
	public void setSession(Map<String, Object> sin) {
		// TODO Auto-generated method stub
		this.sin=sin;
		
	}
	public void setRequest(Map<String, Object> req) {
		// TODO Auto-generated method stub
		this.req=req;
	}

}
