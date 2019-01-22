package com.java;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import org.w3c.dom.*;

import java.util.LinkedHashMap;

public class B8 extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response){

        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder bu = dbf.newDocumentBuilder();
            Document xmlDoc = bu.parse(new File("C:/Users/yuyinlee/IdeaProjects/training/practice4_web/web_project/web/WEB-INF/web.xml"));
            Element elemect = xmlDoc.getDocumentElement();

            NodeList layer1Lists = elemect.getChildNodes();

            LinkedHashMap<String,LinkedHashMap<String, String>> map = new LinkedHashMap();
            LinkedHashMap<String, String> submap = new LinkedHashMap();

            for(int i = 0; i < layer1Lists.getLength(); i++){
                Node layer1Item = layer1Lists.item(i);
                System.out.println();

                if(layer1Item.getNodeType() == Node.ELEMENT_NODE){
                    System.out.print("-" + layer1Item.getNodeName());

                    NodeList layer2Lists = layer1Item.getChildNodes();

                    for(int j = 0; j < layer2Lists.getLength(); j++){
                        Node layer2Item = layer2Lists.item(j);

                        if(layer2Item.getNodeType() == Node.ELEMENT_NODE){
                        System.out.println();
                        System.out.print("--" + layer2Item.getNodeName() + " : " + layer2Item.getTextContent());
                            submap.put(layer2Item.getNodeName(), layer2Item.getTextContent());
                        }else if(layer2Item.getNodeType() == Node.TEXT_NODE && layer2Item.getTextContent().trim().length() > 0){
                        System.out.print(" : " + layer2Item.getTextContent());
                            submap.put(null, layer2Item.getTextContent());
                        }
                    }
                    map.put(layer1Item.getNodeName(), (LinkedHashMap<String, String>) submap.clone());
                    submap.clear();

                }
            }
            request.setAttribute("map", map);
            request.getRequestDispatcher("/B8-2.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
