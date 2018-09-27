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
public class read {
	public static List<String> name = new ArrayList<String>();
	public static List<String> score = new ArrayList<String>();
	public static List<String> intro = new ArrayList<String>();
	public static String c = "";
	public static String username;
    public static String content;
    public static String scor="";
    private static ArrayList filelist = new ArrayList(); 
    
    public static void main(String[] args) throws FileNotFoundException {
        
        long a = System.currentTimeMillis();
        refreshFileList("/Users/apple/Downloads/infor");
        for(int i=0;i<30;i++){
        System.out.println(name.get(i));
        System.out.println(intro.get(i));
        System.out.println(score.get(i));
        }
        int ind = 0;
    	while(ind<55){
    	List<Comment> list=new ArrayList<Comment>();
	
    	
        Scanner in = new Scanner(new File("/Users/apple/Downloads/output/out2/"+Integer.toString(ind)+".txt"),"utf-8");
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

        		list.add(new Comment(username,scor,content));
        		System.out.println(list.size());
        		/*if(list.size()>500)
        			break;*/
        		str = in.nextLine();
        		scor = "";
        		x=0;
        	}
        	
        	else{
        		String str = in.nextLine();
        		scor += "" + str;
        	}
        	x++;
        }
        
        Restaurant r = new Restaurant(name.get(ind),score.get(ind),intro.get(ind),list);
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
        rt.insert(r);
        ind++;
    	}
    }
    
    public static void refreshFileList(String strPath) throws FileNotFoundException { 
        File dir = new File(strPath); 
        File[] files = dir.listFiles(); 
        
        if (files == null) 
            return; 
        for (int i = 0; i < files.length; i++) { 
            if (files[i].isDirectory()) { 
                refreshFileList(files[i].getAbsolutePath()); 
            } else { 
                String strFileName = files[i].getAbsolutePath().toLowerCase();
                if(strFileName.contains("txt")){
                	  Scanner in = new Scanner(new File(strFileName));
      	            int x = 1;
      	            while (in.hasNextLine()&&x!=6) {
      	            	if(x==1){
      	                String str = in.nextLine();
      	                name.add(str);
      	                }
      	            	else if(x==5){
      	            	   
      	            	   score.add(c);
      	            	 c="";
      	            		String str = in.nextLine();
      	            		intro.add(str);
      	            		str = in.nextLine();
      	            		break;
      	            	}
      	            	
      	            	else{
      	            		String str = in.nextLine();
      	            		c+= "" + str;
      	            	}
      	            x++;	
                }
                }
                
                filelist.add(files[i].getAbsolutePath());                    
            } 
        } 
    }
}