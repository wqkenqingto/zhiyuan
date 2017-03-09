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

public class EncordingFilter extends HttpServlet implements Filter {

	
		public void doFilter(ServletRequest httpServletRequest, ServletResponse httpServletResponse,
				FilterChain chain) throws IOException, ServletException {
				HttpServletRequest request = (HttpServletRequest) httpServletRequest;
				        HttpServletResponse response = (HttpServletResponse) httpServletResponse;
				        request.setCharacterEncoding("utf-8");
				        response.setCharacterEncoding("utf-8");
				        chain.doFilter(request, response);
				}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
