package com.zhiyuan.dao;


import java.util.List;

import com.zhiyuan.pojo.Member;
public interface MemberDao {
			public void addMember(Member member);

			public List<Member> loadMember();

			public Member loadOneMember(Member member);

			public void updateMember(Member member);

			public void deleteMember(Member member);

			public Member memberLogin(Member member);

			public void updatePassword(Member member);
		
}
