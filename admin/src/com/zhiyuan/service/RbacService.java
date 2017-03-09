package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.Role;

public interface RbacService {
			
	
		public void createRbacService(Role role);

		public List<Role> loadAllRoleService();

		public Role loadRoleByIdService(Integer roid);

		public void updateRoleService(Role role);

		public void delRoleService(Role role);


	
	
}
