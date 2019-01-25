package com.java;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogFilter implements Filter {
    private String[] excludedPagesArray;

    public void init(FilterConfig config){

        // 取得 web.xml 設定的不執行 Filter 之 page
        try {
            String excludedPages = config.getInitParameter("excludedPages");
            if(excludedPages != null){
                excludedPagesArray = excludedPages.split(",");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();
        String path = httpServletRequest.getServletPath();
        boolean excluded = false;

        try {

            // 該 page 是否為 excludedPage
            if(excludedPagesArray.length > 0){
                for(String excludedPage : excludedPagesArray){
                    if(excludedPage.equals(path)){
                        excluded = true;
                        break;
                    }
                }
            }

            // 若 account 不存在 && 該 page 不是 excludedPage
            if(session.getAttribute("account") == null && excluded == false){
                httpServletResponse.sendRedirect("A4-login");
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
