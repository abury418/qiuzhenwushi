package com.javaee.action;

import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;

/**
 * 日志工具类
 */
public class baseControl extends HttpServlet {
	protected Logger logger = Logger.getLogger(getClass());
}
