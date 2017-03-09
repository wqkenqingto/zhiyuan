package com.zhiyuan.action;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyuan.pojo.Potent;
import com.zhiyuan.pojo.Role;
import com.zhiyuan.service.RbacService;
@Controller("rbacAction")
@Scope("prototype")
public class RbacAction extends BaseAction{
	
			@Resource(name="rbacServiceImpl")
				private RbacService rbacServiceImpl;
				private  Role role;
				private String pids;
				public Role getRole() {
					return role;
				}

				public void setRole(Role role) {
					this.role = role;
				}

				public String getPids() {
					return pids;
				}

				public void setPids(String pids) {
					this.pids = pids;
				}
				//��ǰ̨������pids��װ��������
				public Set<Potent> toPids(String pids){
					Set<Potent>pset=new HashSet<Potent>();
					String[]pid=pids.split(", ");
					for(int i=0;i<pid.length;i++){
					Potent potent=new Potent();	
					System.out.println("ת����ʼ");
					potent.setPid(Integer.parseInt(pid[i]));
					System.out.println(potent.getPid());
					pset.add(potent);
					System.out.println("ת���ɹ�");
					}
					System.out.println("pset�ĳ���---------"+pset.size());
					return pset;
				}
			//----------------------������ɫ������Ȩ��-----------------
			public String createRole(){
				System.out.println("��ӿ�ʼ---------------------");
				System.out.println(pids+"--------------------------");
				Role roles=new Role();
				roles.setContent(role.getContent());
				roles.setRname(role.getRname());
				roles.setPset(toPids(pids));
				System.out.println("pset�ĳ���-------------"+roles.getPset());
				rbacServiceImpl.createRbacService(roles);
				System.out.println("������----------------------");
				return "addok";
			}
			//-----------------------�������н�ɫ---------------------------
			public String loadAllRole(){
			 List<Role>rlist=rbacServiceImpl.loadAllRoleService();
			 req.put("rlist",rlist);
			 return "loadok";
			}
			//-----------------------����ĳһ��ɫ---------------------------
			public String loadRoleById(){
				
				role=rbacServiceImpl.loadRoleByIdService(role.getRoid());
				System.out.println(role.getContent()+"---------------");
				System.out.println(role.getPset().size()+"-----------------");
				req.put("role",role);
				return "loadoneok" ;
				
			}
			//-----------------------�޸Ľ�ɫ-----------------------------
			public String updateRole(){
				System.out.println("�������޸�ҳ��------------------");
				Role roles=new Role();
				roles.setRoid(role.getRoid());
				roles.setContent(role.getContent());
				roles.setRname(role.getRname());
				roles.setPset(toPids(pids));
				System.out.println("pset�ĳ���-------------"+roles.getPset());
				rbacServiceImpl.updateRoleService(roles);
				System.out.println("�޸����-------------------");
				return "updateok";
			}
			//---------------------ɾ����ɫ--------------------------------
			public void delRole(){
				System.out.println("������ɾ��ҳ��---------------------------");
				System.out.println(role.getRoid()+"--------------------");
				rbacServiceImpl.delRoleService(role);
			}	
}
