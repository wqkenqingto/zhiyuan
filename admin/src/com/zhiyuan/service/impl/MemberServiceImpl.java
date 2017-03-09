package com.zhiyuan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyuan.dao.MemberDao;
import com.zhiyuan.pojo.Member;
import com.zhiyuan.service.MemberService;
@Service("memberServiceImpl")
public class MemberServiceImpl implements MemberService {
	@Resource(name="memberDaoImpl")
	private MemberDao memberDaoImpl;		
	public void addMemberService(Member member){
				memberDaoImpl.addMember(member);	
	}
	@Override
	public List<Member> loadAllMemberService() {
			
		return 	memberDaoImpl.loadMember();
	}
	@Override
	public Member loadOneMemberService(Member member) {
		return 	memberDaoImpl.loadOneMember(member);
	}
	@Override
	public void updateMemberService(Member member) {
				memberDaoImpl.updateMember(member);		
	}
	@Override
	public void deleteMemberService(Member member) {
				memberDaoImpl.deleteMember(member);
	}
	@Override
	public Member memberLoginService(Member member) {
		return memberDaoImpl.memberLogin(member);
	}
	@Override
	public void updatePassword(Member member) {
				memberDaoImpl.updatePassword(member);
	}

}
