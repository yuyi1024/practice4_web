package com.java;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.util.Map;

public class CharsetRequestWrapper extends HttpServletRequestWrapper {
    private Map<String, String[]> newParametersMap;

    public CharsetRequestWrapper(HttpServletRequest request, Map<String, String[]> newParametersMap) {
        super(request);
        this.newParametersMap = newParametersMap;
    }

    @Override
    public String getParameter(String name) {
        return newParametersMap.get(name)[0];
    }

    @Override
    public String[] getParameterValues(String name) {
        return newParametersMap.get(name);
    }

    @Override
    public Map<String, String[]> getParameterMap() {
        return newParametersMap;
    }
}
