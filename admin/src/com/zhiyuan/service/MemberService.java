package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.Member;

public interface MemberService {
			
	
		public void addMemberService(Member member);

		public List<Member> loadAllMemberService();

		public Member loadOneMemberService(Member member);

		public void updateMemberService(Member member);

		public void deleteMemberService(Member member);

		public Member memberLoginService(Member member);

		public void updatePassword(Member member);

	
}
