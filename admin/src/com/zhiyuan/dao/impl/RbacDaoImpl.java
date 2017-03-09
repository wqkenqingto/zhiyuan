package com.zhiyuan.dao.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.junit.jupiter.api.Test;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.mysql.fabric.xmlrpc.base.Array;
import com.zhiyuan.dao.RbacDao;
import com.zhiyuan.pojo.Potent;
import com.zhiyuan.pojo.Role;

@Repository("rbacDaoImpl")
public class RbacDaoImpl extends HibernateDaoSupport implements RbacDao {

	@Resource
	public void setSessionFactory01(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}


	@Override
	public void createRole(Role role) {
		// Integer[]pids={1,2,3,4};
		// role=new Role();
		// Set<Potent>pset=role.getPset();
		// for(Potent potent:pset){
		// potent=super.getSession().get(Potent.class,potent.getPid());
		// }
		// role.setPset(pset);
		this.getSession().save(role);
		System.out.println("�������");
	}

	@Override
	public List<Role> loadRoleAll() {
		Criteria criteria = super.getSession().createCriteria(Role.class);
		List<Role> rlist = criteria.list();
		return rlist;
	}

	@Override
	public Role loadRoleById(Integer roid) {
		Role role = (Role) super.getSession().get(Role.class, roid);
		return role;
	}

	@Override
	public void updateRole(Role role) {
			super.getSession().update(role);
//			super.getSession().save(role);
	}

	@Override
	public void delRoleService(Role role) {
			super.getSession().delete(role);
	}
}
