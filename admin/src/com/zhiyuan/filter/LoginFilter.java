package com.zhiyuan.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhiyuan.pojo.Member;

public class LoginFilter extends HttpServlet implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		 HttpServletRequest req = (HttpServletRequest)request;        
         HttpServletResponse resp = (HttpServletResponse) response;        
         HttpSession session = req.getSession();        
         String url=req.getServletPath();    
         String contextPath=req.getContextPath(); 
         if(url.equals("")) url+="/"; 
         if((url.startsWith("/")&&!url.startsWith("/login"))){//若访问后台资源 过滤到login    
             Member member=(Member)session.getAttribute("member");    
             if(member==null){//转入管理员登陆页面    
                  resp.sendRedirect(contextPath+"/login.jsp");   
                  return;    
             }    
        }    
          filterChain.doFilter(request, response);  
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
