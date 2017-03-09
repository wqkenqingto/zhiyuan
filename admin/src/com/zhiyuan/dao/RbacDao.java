package com.zhiyuan.dao;

import java.util.List;

import com.zhiyuan.pojo.Role;

public interface RbacDao {
	public void createRole(Role role);

	public List<Role> loadRoleAll();

	public Role loadRoleById(Integer roid);

	public void updateRole(Role role);

	public void delRoleService(Role role);
	
}
