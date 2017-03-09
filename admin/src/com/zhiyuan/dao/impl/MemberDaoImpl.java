package com.zhiyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyuan.dao.MemberDao;
import com.zhiyuan.pojo.Member;
@Repository("memberDaoImpl")
public class MemberDaoImpl extends HibernateDaoSupport implements MemberDao {
		@Resource
			public void setSessionFactory01(SessionFactory sessionFactory){
			super.setSessionFactory(sessionFactory);
		}
	public void addMember(Member member) {
			super.getSession().save(member);
	}
	@Override
	public List<Member> loadMember() {
	Criteria criteria=super.getSession().createCriteria(Member.class);
			List<Member>mlist=criteria.list();		
					return mlist;
	}
	@Override
	public Member loadOneMember(Member member) {
			member=	(Member) super.getSession().get(Member.class,member.getMid());
			return member;
	}
	@Override
	public void updateMember(Member member) {
			super.getSession().update(member);
	}
	@Override
	public void deleteMember(Member member) {
			super.getSession().delete(member);
	}
	@Override
	public Member memberLogin(Member member) {
		String hql="from Member where mname='"+member.getMname()+"'and password='"+member.getPassword()+"'";
		Query query = super.getSession().createQuery(hql);	 
		return  (Member) query.uniqueResult();
	}
	@Override
	public void updatePassword(Member member) {
		String hql="update Member m set m.password='"+member.getPassword()+"' where mid="+member.getMid();
		Query query=super.getSession().createQuery(hql);
		query.executeUpdate();
	}
	
}
