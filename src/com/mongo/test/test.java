package com.mongo.test;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mongo.bean.Comment;
import com.mongo.bean.Reskeywords;
import com.mongo.bean.Restaurant;
import com.mongo.dao.ReskeyDao;
import com.mongo.dao.RestaurantDao;
import com.mongo.dao.impl.ReskeyDaoImp;
import com.mongo.dao.impl.RestaurantDaoImp;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;

public class test {

	public static void main(String[] args) throws UnknownHostException {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		/*AbstractRepository  pr= (PersonRepository)ctx.getBean("personRepository");
		Person p=pr.findOneByname("lsb");
		System.out.println(p.getAge());*/
        /*ArticleDao ad = (ArticleDaoImp)ctx.getBean("ArticleDaoImp");
        Article a  = ad.findOneByname("english");
        System.out.println(a.getName());*/
		RestaurantDao rt = (RestaurantDaoImp)ctx.getBean("RestaurantDaoImp");
		/*Comment[] ca = new Comment[3];
		for(int i = 0;i<3;i++){
			ca[i] = new Comment("dsb","fuck you");
		}*/
		//rt.insert(r);
		//rt.insertComment(r, new Comment("ww","good"));
		//rt.deleteComment(r, new Comment("wew","good"));
		//rt.updateComment(r, new Comment("wew","good"));
		/*List<Comment> clist = new ArrayList<Comment>();
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
		}*/
		/*Mongo mongo  = new Mongo("127.0.0.1");
		DB db = mongo.getDB("db");
		DBCollection c = db.getCollection("r");
		DBObject x = new BasicDBObject();
		x.put("keyword", "不错");
		x.put("counter", 10);
		DBObject z = new BasicDBObject();
		z.put("keyword", "一般");
		z.put("counter", 20);
		List<DBObject> y = new ArrayList<DBObject>();
		y.add(x);
		y.add(z);
		c.insert
		c.update(new BasicDBObject("name", "咂摸"), 
	            z,
	            false,//如果数据库不存在，是否添加
	            false//多条修改
	            );*/
		/*DBObject x = new BasicDBObject();
		x.put("keyword", "不错");
		x.put("counter", 10);
		Mongo mongo = new Mongo("127.0.0.1");
		GridFS fs = new GridFS(mongo.getDB("db"));
		GridFSDBFile file =  fs.findOne(new BasicDBObject("name", "咂摸"));
		file.put("name", "haha");
		file.save();*/
		/*ReskeyDao rk = (ReskeyDaoImp)ctx.getBean("ReskeyDaoImp");
		Reskeywords rw = rk.findOneByname("all");
		System.out.println(rw.getKeywords().get(1).getKeyword());*/
		try
		{
		File aFile=new File("/Users/apple/Documents/1.txt");//指定文件名
		//建立输出流
		FileOutputStream out= new FileOutputStream(aFile);					
		byte[] b=new byte[1024];
		    for(int i=0;i<37;i++){
		    //String s = 	"ul#skills li.s"+Integer.toString(i)+":after {content: \""+Integer.toString(i)+"%\";}\n";
			String str="li.s"+Integer.toString(i)+"{width:"+ Double.toString(20+i*2.5-2.3)+"%;}\n";
			b=str.getBytes();//进行String到byte[]的转化
			out.write(b);	//写入文本内容
		    }
		}
		catch (IOException e)
		{
			System.out.println(e.toString());
		}
		
		
	}

}
