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

public class Searchres extends ActionSupport {
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
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
		List<String> alist = new ArrayList<String>();
		List<String> alist2 = new ArrayList<String>();
		List<Restaurant> list = rt.findAll();
		for(int i=0;i<1;i++){
			for(int j=0;j<list.get(i).getComment().size();j++){
				Comment c = list.get(i).getComment().get(j);
				if(!alist.contains(c.getUsername()))
						alist.add(c.getUsername());
			}
		}
		for(int i=0;i<list.size();i++){
			if(alist.get(i).contains(key))
				alist2.add(alist.get(i));
		}
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("userlist", alist2);
		return SUCCESS;
	}
	
	public String search() {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
	List<Restaurant> list = rt.findAll();
	List<Restaurant> alist = new ArrayList<Restaurant>();
	for(int i=0;i<list.size();i++){
		if(list.get(i).getName().toString().contains(key))
			alist.add(list.get(i));
	}
	Map request = (Map)ActionContext.getContext().get("request");
	request.put("Reslist", alist);
	return SUCCESS;
	}
}