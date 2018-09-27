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

public class ShowAllUsers extends ActionSupport {

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
		
		List<String> alist = new ArrayList<String>();
		
		List<Restaurant> list = rt.findAll();
		
		for(int i=0;i<1;i++){
			for(int j=0;j<list.get(i).getComment().size();j++){
				Comment c = list.get(i).getComment().get(j);
				if(!alist.contains(c.getUsername()))
						alist.add(c.getUsername());
			}
		}
		
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("userlist", alist);//
		
		return SUCCESS;
	}
}