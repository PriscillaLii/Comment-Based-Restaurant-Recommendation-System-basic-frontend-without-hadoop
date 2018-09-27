package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;






import com.mongo.bean.Comment;
import com.mongo.bean.Restaurant;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class KeyComment extends ActionSupport {
    private String key;
    
    
	public String getKey() {
		return key;
	}


	public void setKey(String key) {
		this.key = key;
	}


	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		Map session = (Map)ActionContext.getContext().getSession();
	    Restaurant r = (Restaurant)session.get("ResDetail");
	    List<Comment> list = r.getComment();
	    List<Comment> l = new ArrayList<Comment>();
	    /*for(int i=0;i<list.size();i++){
	    	if(!list.get(i).getContent().contains(key)){
	    		list.remove(i);
	    		i--;
	    	}
	    }*/
	    for(int i=0;i<list.size();i++){
	    	if(list.get(i).getContent().contains(key)){
	    		l.add(list.get(i));
	    	}
	    }
		session.put("keycomment", l);
		session.put("keyword", key);
		session.put("page", 0);
		return SUCCESS;
	}
}