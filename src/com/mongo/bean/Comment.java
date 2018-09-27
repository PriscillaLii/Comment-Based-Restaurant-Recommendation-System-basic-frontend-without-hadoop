
package com.mongo.bean;

import java.io.Serializable;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;


public class Comment  implements Serializable {

	
	private static final long serialVersionUID = 3617931430808763438L;
	
	//private String id;   
    private String username;//用户名
    private String score;//用户单一评分
    private String content; //评论内容
    
	public Comment() {
		super();
	}
	
	/*public Comment(String id, String username,String content) {
		super();
		this.id = id;
		this.username = username;
		this.content = content;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}*/
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public Comment(String username,String score,String content) {
		super();
		this.username = username;
		this.score = score;
		this.content = content;
	} 

	public DBObject ConverttoBO(){
		DBObject c = new BasicDBObject();
        c.put("username", this.getUsername());
        c.put("content", this.getContent());
        c.put("socre", this.getScore());
        return c;
	}


}


/*package com.mongo.bean;

import java.io.Serializable;


public class Comment  {

	  
    private String username;
    private String content; 
    
	
	
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Comment(String username,String content) {
		this.username = username;
		this.content = content;
	} 

	


}*/