package com.zhiyuan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyuan.dao.RbacDao;
import com.zhiyuan.pojo.Role;
import com.zhiyuan.service.RbacService;
@Service("rbacServiceImpl")
public class RbacServiceImpl implements RbacService {		
			@Resource(name="rbacDaoImpl")
			private RbacDao rbacDaoImpl;
	@Override
	public void createRbacService(Role role) {
			rbacDaoImpl.createRole(role);
	}
	@Override
	public List<Role> loadAllRoleService() {
		return rbacDaoImpl.loadRoleAll();
	}
	@Override
	public Role loadRoleByIdService(Integer roid) {
			
		return rbacDaoImpl.loadRoleById(roid);
	}
	@Override
	public void updateRoleService(Role role) {
		
		rbacDaoImpl.updateRole(role);
	}
	@Override
	public void delRoleService(Role role) {
			rbacDaoImpl.delRoleService(role);
	}

	
}
