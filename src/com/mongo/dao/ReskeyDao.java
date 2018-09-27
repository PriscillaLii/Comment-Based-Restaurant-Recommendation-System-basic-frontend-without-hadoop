package com.mongo.dao;

import javassist.compiler.ast.Keyword;

import com.mongo.bean.Reskeywords;
import com.mongo.bean.Restaurant;

public interface ReskeyDao {
	public Reskeywords findOneByname(String name); 
	
	public <List>Keyword findall(); 
}
