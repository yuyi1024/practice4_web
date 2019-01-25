package com.java;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

@WebListener()
public class ModifySessionListener implements HttpSessionAttributeListener {

    @Override
    public void attributeAdded(HttpSessionBindingEvent httpSessionBindingEvent) {

    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent httpSessionBindingEvent){
        Logger logger = LogManager.getLogger("SessionListener");
        String loggerMsg = "Session attribute is removed:{ "+ httpSessionBindingEvent.getName() + " => " + httpSessionBindingEvent.getValue() + " }";
        logger.debug(loggerMsg);
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent httpSessionBindingEvent){

    }
}
