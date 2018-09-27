package com.action;

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

public class Resdetail extends ActionSupport {
	private String ResId;
	
	public String getResId() {
		return ResId;
	}

	public void setResId(String resId) {
		ResId = resId;
	}

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
		Restaurant r= rt.findOne(ResId);
		Map session = (Map)ActionContext.getContext().getSession();
		session.put("ResDetail", r);
		session.put("page", 1);
		
		ReskeyDao rk = (ReskeyDaoImp)ctx.getBean("ReskeyDaoImp");
		Reskeywords rw = rk.findOneByname(r.getName());
		List<Keywords> list = rw.getKeywords();
		for(int i=0;i<list.size()-1;i++) {
			   for(int j=1;j<list.size()-i;j++) {
				    Keywords a;
				    if((list.get(j-1).getCounter())<list.get(j).getCounter()) {   //比较两个整数的大小
				     
				     a=list.get(j-1);
				     list.set((j-1),list.get(j));
				     list.set(j,a);
				    }
				   }
				  }
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("Commentlist", list);
		return SUCCESS;
	}
}