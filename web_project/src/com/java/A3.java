package com.java;

import org.w3c.dom.Element;
import org.w3c.dom.Node;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class A3 extends HttpServlet{
    private String passCode;

    public void init(){
        try{
            super.init();
            passCode = getServletContext().getInitParameter("PASS_CODE");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            String paramPassCode = request.getParameter("passCode");
            if(paramPassCode.equals(passCode)){
                request.getRequestDispatcher("A3-livingRoom").forward(request, response);
            } else {
                request.getRequestDispatcher("A3-door").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
