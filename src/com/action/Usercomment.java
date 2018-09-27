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

public class Usercomment extends ActionSupport {
	
	
	public String execute() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
		List<Comment> clist = new ArrayList<Comment>();
		List<String> alist = new ArrayList<String>();
		List<Restaurant> list = rt.findAll();
		for(int i=0;i<1;i++){
			for(int j=0;j<list.get(i).getComment().size();j++){
                
				Comment c = list.get(i).getComment().get(j);
				System.out.println(c.getUsername());
				if(c.getUsername().equals("铭天啊")){
					clist.add(c);
					alist.add(list.get(i).getName());
				}
			}
		}
		System.out.println(clist.get(0).getContent());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("clist", clist);
		request.put("alist", alist);
		return SUCCESS;
	}
}
