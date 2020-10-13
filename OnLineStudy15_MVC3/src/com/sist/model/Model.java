package com.sist.model;
import javax.servlet.http.HttpServletRequest;
/*
 *  execute()
 */
public interface Model {
	public String handlerRequest(HttpServletRequest request);
}
