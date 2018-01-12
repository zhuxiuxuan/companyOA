package com.zxx.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zxx.entity.StaffInfo;

/**
 * 全站判断用户是否登录过滤器
 * @author 朱修轩
 *2018-1-11
 *下午2:47:29
 */
public class AuthFilter implements Filter{

    @Override
    public void destroy() {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        HttpServletResponse resp = (HttpServletResponse)response;
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession();
        StaffInfo staffInfao = (StaffInfo)session.getAttribute("staffInfo");
        String uri = req.getRequestURI();
        //简单判断缓存中是否有用户
        if(staffInfao==null){//没有用户
            //判断用户是否是选择跳到登录界面
            if(uri.endsWith("login.jsp")||uri.endsWith("m75b2V.action") || uri.endsWith("404.jsp")){
                chain.doFilter(request, response);
            }else{
                resp.sendRedirect(req.getContextPath()+"/login.jsp");
            }    
        }else{//有用户
            chain.doFilter(request, response);
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

}