package com.java;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.FileInputStream;

public class WebXmlGetter {
    private Element element;

    public WebXmlGetter() {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(new FileInputStream("C:/Users/yuyinlee/IdeaProjects/training/practice4_web/web_project/web/WEB-INF/web.xml"));
            element = doc.getDocumentElement();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Element getElement(){
        return element; //<web-app></web-app>
    }
}
