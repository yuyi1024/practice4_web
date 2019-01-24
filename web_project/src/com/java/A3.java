package com.java;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.FileInputStream;

public class A3 extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(new FileInputStream("C:/Users/yuyinlee/IdeaProjects/training/practice4_web/web_project/web/WEB-INF/web.xml"));
            Element element = doc.getDocumentElement();
            Node node = element.getElementsByTagName("PASS_CODE").item(0);
            Node valueNode = node.getChildNodes().item(0);
            String xmlPassCode = valueNode.getNodeValue();

            String paramPassCode = request.getParameter("passCode");

            if(xmlPassCode.equals(paramPassCode)){
                request.getRequestDispatcher("/livingRoom.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/door.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
