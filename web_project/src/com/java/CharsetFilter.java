package com.java;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class CharsetFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig){

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        String method = request.getMethod();

        if(method.equals("POST")){
            request.setCharacterEncoding("UTF-8");
            chain.doFilter(servletRequest, servletResponse);

        } else if(method.equals("GET") && request.getParameterMap().size() > 0){
            HashMap<String, String[]> map = new HashMap(request.getParameterMap());
            ArrayList<String> valueArray = new ArrayList();
            String newParameteValue = "";

            for(Object parameterName : map.keySet()){ //name
                for(String parameteValue : map.get(parameterName)){   //[aaa, x, x, x]
                    newParameteValue = new String(parameteValue.getBytes("ISO8859-1"), "UTF-8");
                    valueArray.add(newParameteValue);
                }
                map.put(parameterName.toString(), valueArray.toArray(new String[0]));
                valueArray.clear();
            }
            HttpServletRequest newRequest = new CharsetRequestWrapper(request, map);
            chain.doFilter(newRequest, servletResponse);

        } else{
            chain.doFilter(servletRequest, servletResponse);
        }

    }

    @Override
    public void destroy() {

    }
}
