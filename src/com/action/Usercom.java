package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mongo.bean.Comment;
import com.mongo.bean.Restaurant;
import com.mongo.dao.RestaurantDao;
import com.mongo.dao.impl.RestaurantDaoImp;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Usercom extends ActionSupport {
     private String username;
     
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
		List<Comment> clist = new ArrayList<Comment>();
		List<Restaurant> alist = new ArrayList<Restaurant>();
		List<Restaurant> list = rt.findAll();
		for(int i=0;i<list.size();i++){
			for(int j=0;j<list.get(i).getComment().size();j++){
                
				Comment c = list.get(i).getComment().get(j);
				//System.out.println(c.getUsername());
				if(c.getUsername().equals(username)){
					clist.add(c);
					alist.add(list.get(i));
				}
			}
		};
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("clist", clist);
		request.put("alist", alist);
		return SUCCESS;
	}
}