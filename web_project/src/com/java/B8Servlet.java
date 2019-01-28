package com.java;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class B8Servlet extends HttpServlet {
    private String englishName;
    private String chineseName;
    private String fullName;

    public void init(){
        try{
            super.init();
            englishName = getInitParameter("englishName");
            chineseName = getInitParameter("chineseName");
            fullName = getServletContext().getInitParameter("fullName");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response){
        try {
            request.setAttribute("englishName", englishName);
            request.setAttribute("chineseName", chineseName);
            request.setAttribute("fullName", fullName);
            request.getRequestDispatcher("/B8/B8.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
