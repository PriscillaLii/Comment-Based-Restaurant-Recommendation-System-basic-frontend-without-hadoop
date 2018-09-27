package com.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mongo.bean.Keywords;
import com.mongo.bean.Reskeywords;
import com.mongo.bean.Restaurant;
import com.mongo.dao.ReskeyDao;
import com.mongo.dao.RestaurantDao;
import com.mongo.dao.impl.ReskeyDaoImp;
import com.mongo.dao.impl.RestaurantDaoImp;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Allcomment extends ActionSupport {
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
		ReskeyDao rk = (ReskeyDaoImp)ctx.getBean("ReskeyDaoImp");
		
		Reskeywords rw = rk.findOneByname("all");
		List<Keywords> list = rw.getKeywords();
		for(int i=0;i<list.size()-1;i++) {
			   for(int j=1;j<list.size()-i;j++) {
				    Keywords a;
				    if((list.get(j-1).getCounter())<list.get(j).getCounter()) {   //���������������������������
				     
				     a=list.get(j-1);
				     list.set((j-1),list.get(j));
				     list.set(j,a);
				    }
				   }
				  }
		
		int total=0;
		List<Integer> frequency = new ArrayList<Integer>();
		for(int i=0;i<list.size()-1;i++){
			total+= list.get(i).getCounter();
		}
		for(int i=0;i<31;i++){
			frequency.add(100*list.get(i).getCounter()/total);
		}
		while(list.size()>31){
			list.remove(list.size()-1);
		}
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("Commentlist", list);
		request.put("frequency", frequency);
		return SUCCESS;
	}
	
	public String special() {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		ReskeyDao rk = (ReskeyDaoImp)ctx.getBean("ReskeyDaoImp");
		Reskeywords rw = rk.findOneByname(key);
		List<Keywords> list = rw.getKeywords();
		for(int i=0;i<list.size()-1;i++) {
			   for(int j=1;j<list.size()-i;j++) {
				    Keywords a;
				    if((list.get(j-1).getCounter())<list.get(j).getCounter()) {   //���������������������������
				     
				     a=list.get(j-1);
				     list.set((j-1),list.get(j));
				     list.set(j,a);
				    }
				   }
				  }
		
		int total=0;
		List<Integer> frequency = new ArrayList<Integer>();
		for(int i=0;i<list.size()-1;i++){
			total+= list.get(i).getCounter();
		}
		
		for(int i=0;i<31;i++){
			frequency.add(100*list.get(i).getCounter()/total);
		}
		while(list.size()>31){
			list.remove(list.size()-1);
		}
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("Commentlist", list);
		request.put("frequency", frequency);
		return SUCCESS;
	}
}