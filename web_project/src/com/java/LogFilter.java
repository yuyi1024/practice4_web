package com.java;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogFilter implements Filter {
    private String[] excludedPagesArray;

    public void init(FilterConfig config){
        String excludedPages = config.getInitParameter("excludedPages");
        if(excludedPages != null){
            excludedPagesArray = excludedPages.split(",");
        }
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();
        String path = httpServletRequest.getServletPath();
        boolean excluded = false;

        try {
            if(excludedPagesArray.length > 0){
                for(String excludedPage : excludedPagesArray){
                    if(excludedPage.equals(path)){
                        excluded = true;
                        break;
                    }
                }
            }

            if(session.getAttribute("account") == null && excluded == false){
                httpServletResponse.sendRedirect("login.jsp");
            } else{
                chain.doFilter(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void destroy(){

    }
}
