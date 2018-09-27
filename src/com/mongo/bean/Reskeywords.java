
package com.mongo.bean;

import java.io.Serializable;
import java.util.List;


public class Reskeywords implements Serializable {

	
	private static final long serialVersionUID = 3617931430808763438L;
	
	private String id;
    private String resname;   
    private List<Keywords> keywords;
    
    
	public Reskeywords(String resname, List<Keywords> keywords) {
		super();
		this.resname = resname;
		this.keywords = keywords;
	}


	public Reskeywords(String id, String resname, List<Keywords> keywords) {
		super();
		this.id = id;
		this.resname = resname;
		this.keywords = keywords;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getResname() {
		return resname;
	}


	public void setResname(String resname) {
		this.resname = resname;
	}


	public List<Keywords> getKeywords() {
		return keywords;
	}


	public void setKeywords(List<Keywords> keywords) {
		this.keywords = keywords;
	}


	public Reskeywords() {
		super();
	}
	


}
