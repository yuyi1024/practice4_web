package com.java;

import org.w3c.dom.Element;
import org.w3c.dom.Node;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class A3 extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            Element element = new WebXmlGetter().getElement();  //<web-app>

            Node node = element.getElementsByTagName("PASS_CODE").item(0);  //<PASS_CODE>
            Node valueNode = node.getChildNodes().item(0);  // #text
            String xmlPassCode = valueNode.getTextContent();

            String paramPassCode = request.getParameter("passCode");

            if(xmlPassCode.equals(paramPassCode)){
                request.getRequestDispatcher("A3-livingRoom").forward(request, response);
            } else {
                request.getRequestDispatcher("A3-door").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
