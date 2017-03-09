package com.zhiyuan.action;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.context.annotation.Scope;
import org.springframework	.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.zhiyuan.pojo.Member;
import com.zhiyuan.pojo.Potent;
import com.zhiyuan.pojo.Role;
import com.zhiyuan.service.MemberService;
import com.zhiyuan.service.RbacService;

@Controller("memberAction")
@Scope("prototype")
public class MemberAction extends BaseAction {
	HttpServletRequest	request;
	HttpSession session;
	private Member member;
	private Role role;
	@Resource(name = "memberServiceImpl")
	private MemberService memberServiceImpl;
	@Resource(name="rbacServiceImpl")
	private RbacService rbacServiceImpl;
	private Set<Potent>potents;
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public Set<Potent> getPotents() {
		return potents;
	}
	public void setPotents(Set<Potent> potents) {
		this.potents = potents;
	}
	//-----------------����role---------------------------
	public String loadAllRole(){
		 List<Role>rlist=rbacServiceImpl.loadAllRoleService();
		 req.put("rlist",rlist);
		 return "loadok";
		}
	//-----------------����roletoupdate-------------------
//	public String loadAllRole2(){
//		 
//		 return "loadok2";
//		}
	//-----------------���member---------------------------
	public String addMember(){
			memberServiceImpl.addMemberService(member);
		return "addok";
	}
	//-----------------��������member------------------------
	public String loadAllMember(){
		System.out.println("�����˼���member");
	List<Member>mlist=memberServiceImpl.loadAllMemberService();
			req.put("mlist",mlist);
			return "loadallok";
	}
	//----------------����һ��member--------------------------
	public String loadOneMember(){
		List<Role>rlist=rbacServiceImpl.loadAllRoleService();
		req.put("rlist",rlist);
		member=memberServiceImpl.loadOneMemberService(member);
		req.put("member",member);
		return "loadoneok";
	}
	//---------------�޸�һ��member---------------------------
	public String updateMember(){
		memberServiceImpl.updateMemberService(member);
		return "updateok";
	}
	//---------------ɾ��һ��member---------------------------
	public void deleteMember(){	
		memberServiceImpl.deleteMemberService(member);
	}
	//---------------�û���¼---------------------------------
	public String memberLogin(){
		member= memberServiceImpl.memberLoginService(member);
		if(member!=null){
			request = ServletActionContext.getRequest();
		  session = request.getSession();
		 sin.put("member",member);
		 session.setAttribute("member",member);
			return "loginok";
		}else {
			return "loginfail";
		}
	}
	//-------------Ȩ�޼���----------------------------------
	public String loadMenu(){
		System.out.println("-------------------������Ȩ�޼���--------------------"+member.getMid());
		member= memberServiceImpl.loadOneMemberService(member);
		role=rbacServiceImpl.loadRoleByIdService(member.getRole().getRoid());
		potents=role.getPset();
		System.out.println("----------------------Ȩ�޵ĳ���"+potents.size());
		return "loadmenuok";
	}
	//-----------ʵ��ע������---------------------------------
	public String logoutMember(){
		sin.remove("member");	
		return "logout";
	}
	//----------ʵ����ѯ����------------------------------------
	//----------��ת����ӭ����----------------------------------
	public  String toWelcome(){
		member=memberServiceImpl.loadOneMemberService(member);
		req.put("member",member);
		return "welcome";
	}
	//---------�޸�����---------------------------------------
	public String updatePassword(){
		System.out.println(member.getPassword()+"---------------------");
		memberServiceImpl.updatePassword(member);
		return "success";
	}
}
