package com.pawsco.tags;

import javax.servlet.jsp.*;

import javax.servlet.jsp.tagext.*;
import java.io.*;


@SuppressWarnings("serial")
public class IfEmptyMarkTag extends TagSupport {

    private String field;
    private String color = "red";

    public void setField(String field) {
        this.field = field;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public int doStartTag() throws JspException {
        try {
            JspWriter out = pageContext.getOut();
            if (field == null || field.length() == 0 || field == "") {
                out.print("<font color=" + color + "> *</font>");
            }
        } catch (IOException ioe) {
            System.out.println(ioe);
        }
        return SKIP_BODY;
    }
}

