package com.mongo.bean;

import java.io.Serializable;
import java.util.List;


public class Restaurant implements Serializable {

	
	private static final long serialVersionUID = 3617931430808763428L;
	
	private String id;  //餐馆ID 
    private String name; //餐馆名称
    private String score;//总评分
    private String intro;//地址等介绍
    //private Comment[] comment; 
    private List<Comment> comment;//评论列表
    
	public Restaurant() {
		super();
	}
	
	public Restaurant(String id, String name, String score, String intro,List<Comment> comment) {
		super();
		this.id = id;
		this.name = name;
		this.score = score;
		this.intro = intro;
		this.comment = comment;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
	
	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	

	
	
	

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public Restaurant(String name, String score, String intro, List<Comment> comment) {
		super();
		this.name = name;
		this.intro = intro;
		this.score = score;
		this.comment = comment;
	}

	


}