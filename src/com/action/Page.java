package com.action;

import java.util.List;
import java.util.Map;

import com.mongo.bean.Comment;
import com.mongo.bean.Restaurant;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Page extends ActionSupport {
    private int targetpage;
    
	public int getTargetpage() {
		return targetpage;
	}

	public void setTargetpage(int targetpage) {
		this.targetpage = targetpage;
	}

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		Map session = (Map)ActionContext.getContext().getSession();
	    session.put("page", targetpage);
		return SUCCESS;
	}
	
	public String keyc() {
		// TODO Auto-generated method stub
		Map session = (Map)ActionContext.getContext().getSession();
	    session.put("page", targetpage);
	    System.out.println(targetpage);
		return SUCCESS;
	}
}