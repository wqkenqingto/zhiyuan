package com.zhiyuan.pojo;

import java.io.Serializable;
import java.util.Set;

public class Potent {
	private Integer pid;
	private String dlid;
	private Set<Role>rset;
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getDlid() {
		return dlid;
	}

	public void setDlid(String dlid) {
		this.dlid = dlid;
	}
	public Set<Role> getRset() {
		return rset;
	}

	public void setRset(Set<Role> rset) {
		this.rset = rset;
	}
}
