<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="java.io.File" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="java.util.LinkedHashMap" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 下午 04:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
    DocumentBuilder builder = factory.newDocumentBuilder();
    Document xmlDoc = builder.parse(new File("C:/Users/yuyinlee/IdeaProjects/training/practice4_web/web_project/web/WEB-INF/web.xml"));
    Element elemect = xmlDoc.getDocumentElement();

    NodeList layer1Lists = elemect.getChildNodes();

    LinkedHashMap<String,LinkedHashMap<String, String>> map = new LinkedHashMap();
    LinkedHashMap<String, String> submap = new LinkedHashMap();

    Node n = null;

    for(int i = 0; i < layer1Lists.getLength(); i++){
        Node layer1Item = layer1Lists.item(i);
        n = layer1Lists.item(i);
//        System.out.println();
        if(layer1Item.getNodeType() == Node.ELEMENT_NODE){
//            System.out.print("-" + layer1Item.getNodeName());

            NodeList layer2Lists = layer1Item.getChildNodes();

            for(int j = 0; j < layer2Lists.getLength(); j++){
                Node layer2Item = layer2Lists.item(j);

                if(layer2Item.getNodeType() == Node.ELEMENT_NODE){
//                        System.out.println();
//                        System.out.print("--" + layer2Item.getNodeName() + " : " + layer2Item.getTextContent());
                    submap.put(layer2Item.getNodeName(), layer2Item.getTextContent());
                }else if(layer2Item.getNodeType() == Node.TEXT_NODE && layer2Item.getTextContent().trim().length() > 0){
//                        System.out.print(" : " + layer2Item.getTextContent());
                    submap.put(null, layer2Item.getTextContent());
                }
            }
            map.put(layer1Item.getNodeName(), (LinkedHashMap<String, String>) submap.clone());
            submap.clear();

        }
    }
%>

<html>
<head>
    <title>B8-1</title>
</head>
<body>
    <h3><%= elemect.getAttribute("xmlns")%></h3>
    <h3><%= elemect.getTagName()%></h3>
    <h3><%= n.getNodeValue()%></h3>
    <h3><%= elemect.getAttribute("xmlns")%></h3>
    <ul>
        <%
            for (Object o : map.keySet()){ ;
        %>
                <li><%= o%>
        <%
                for (Object p : map.get(o).keySet()){
                    if(p == null){

        %>
                    : <%= map.get(o).get(p)%></li>
        <%
                    } else{
        %>
                    <ul>
                        <li><%= p%> : <%= map.get(o).get(p)%></li>
                    </ul>
                </li>
        <%
                    }
                }
            }
        %>
    </ul>
</body>
</html>
