package com.mongo.test;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mongo.bean.Comment;
import com.mongo.bean.Restaurant;
import com.mongo.dao.RestaurantDao;
import com.mongo.dao.impl.RestaurantDaoImp;
 
public class readd {
	    public static String username;
	    public static String content;
	    public static String score="";
	    
	    public static void main(String[] args) {
	        try {
	        	String[] xx = new String[]{"蓝灏","Don chicken(三里屯SOHO店) ","九街 9th Street","和缘亭北海道料理(瑞士公寓店)","三样菜(工体店)","老坑记(三里屯店)","度小月(三里屯太古里店)","MustGuette 红邮筒餐厅","Viviancake(薇薇安蛋糕)","南京大牌档(三里屯世茂店)"};
	        	
	        	int ind = 4;
	        	while(ind<14){
	        	List<Comment> list=new ArrayList<Comment>();
	    	
	        	
	            Scanner in = new Scanner(new File("/Users/apple/Downloads/out_1/"+Integer.toString(ind)+".txt"),"GBK");
	            System.out.println("/Users/apple/Downloads/out_1/"+Integer.toString(ind)+".txt");
	            int x = 1;
	            while (in.hasNextLine()) {
	            	if(x==1){
	                String str = in.nextLine();
	                username = str;
	                }
	            	else if(x==5){
	            		String str = in.nextLine();
	            		content = str;

	            		list.add(new Comment(username,score,content));
	            		System.out.println(list.size());
	            		/*if(list.size()>500)
	            			break;*/
	            		str = in.nextLine();
	            		score = "";
	            		x=0;
	            	}
	            	
	            	else{
	            		String str = in.nextLine();
	            		score += "  " + str;
	            	}
	            	x++;
	            }
	            
	            Restaurant r = new Restaurant(xx[ind-4],"口味8.8 环境9.1 服务9.1","地址： 工人体育场 北京工体北路21号永利国际大厦1-2F",list);
	            ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	            RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
	            rt.insert(r);
	            ind++;
	        }
	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        }
	    }
	     
	    public static String[] splitt(String str){
	        String strr = str.trim();
	        String[] abc = strr.split("[\\p{Space}]+");
	        String str1 = abc[0];
	        String str2 = abc[1];
	        System.out.println(str1);
	        System.out.println(str2);
	        username  = str1;
	        return abc;
	    }
	     
	}

