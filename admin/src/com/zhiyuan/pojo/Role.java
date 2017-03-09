package com.zhiyuan.pojo;

import java.util.Set;

public class Role {
	private Integer roid;
	private String rname;
	private String content;
	private Set<Potent>pset;
	private Set<Member>smember;
	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Set<Potent> getPset() {
		return pset;
	}

	public void setPset(Set<Potent> pset) {
		this.pset = pset;
	}

	public Integer getRoid() {
		return roid;
	}

	public void setRoid(Integer roid) {
		this.roid = roid;
	}

	public Set<Member> getSmember() {
		return smember;
	}

	public void setSmember(Set<Member> smember) {
		this.smember = smember;
	}


}
