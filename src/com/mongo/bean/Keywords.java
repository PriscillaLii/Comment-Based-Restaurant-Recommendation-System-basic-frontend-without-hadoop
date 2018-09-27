package com.mongo.bean;

import java.io.Serializable;

public class Keywords implements Serializable {

	
	private static final long serialVersionUID = 3617931430808763438L;
	
   private String keyword;
   private int counter;
   
   
   
   public Keywords() {
	super();
}



public String getKeyword() {
	return keyword;
}



public void setKeyword(String keyword) {
	this.keyword = keyword;
}



public int getCounter() {
	return counter;
}



public void setCounter(int counter) {
	this.counter = counter;
}



public Keywords(String keyword, int counter) {
	super();
	this.keyword = keyword;
	this.counter = counter;
}
   
   
}
