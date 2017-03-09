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
				//将前台传来的pids封装到对象中
				public Set<Potent> toPids(String pids){
					Set<Potent>pset=new HashSet<Potent>();
					String[]pid=pids.split(", ");
					for(int i=0;i<pid.length;i++){
					Potent potent=new Potent();	
					System.out.println("转换开始");
					potent.setPid(Integer.parseInt(pid[i]));
					System.out.println(potent.getPid());
					pset.add(potent);
					System.out.println("转换成功");
					}
					System.out.println("pset的长度---------"+pset.size());
					return pset;
				}
			//----------------------创建角色并赋予权限-----------------
			public String createRole(){
				System.out.println("添加开始---------------------");
				System.out.println(pids+"--------------------------");
				Role roles=new Role();
				roles.setContent(role.getContent());
				roles.setRname(role.getRname());
				roles.setPset(toPids(pids));
				System.out.println("pset的长度-------------"+roles.getPset());
				rbacServiceImpl.createRbacService(roles);
				System.out.println("添加完成----------------------");
				return "addok";
			}
			//-----------------------加载所有角色---------------------------
			public String loadAllRole(){
			 List<Role>rlist=rbacServiceImpl.loadAllRoleService();
			 req.put("rlist",rlist);
			 return "loadok";
			}
			//-----------------------加载某一角色---------------------------
			public String loadRoleById(){
				
				role=rbacServiceImpl.loadRoleByIdService(role.getRoid());
				System.out.println(role.getContent()+"---------------");
				System.out.println(role.getPset().size()+"-----------------");
				req.put("role",role);
				return "loadoneok" ;
				
			}
			//-----------------------修改角色-----------------------------
			public String updateRole(){
				System.out.println("进入了修改页面------------------");
				Role roles=new Role();
				roles.setRoid(role.getRoid());
				roles.setContent(role.getContent());
				roles.setRname(role.getRname());
				roles.setPset(toPids(pids));
				System.out.println("pset的长度-------------"+roles.getPset());
				rbacServiceImpl.updateRoleService(roles);
				System.out.println("修改完成-------------------");
				return "updateok";
			}
			//---------------------删除角色--------------------------------
			public void delRole(){
				System.out.println("进入了删除页面---------------------------");
				System.out.println(role.getRoid()+"--------------------");
				rbacServiceImpl.delRoleService(role);
			}	
}
