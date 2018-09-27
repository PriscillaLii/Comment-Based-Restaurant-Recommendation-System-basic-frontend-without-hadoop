package com.mongo.dao.impl;

import javassist.compiler.ast.Keyword;

import org.springframework.data.document.mongodb.MongoTemplate;
import org.springframework.data.document.mongodb.query.Criteria;
import org.springframework.data.document.mongodb.query.Query;

import com.mongo.bean.Reskeywords;
import com.mongo.bean.Restaurant;
import com.mongo.dao.ReskeyDao;

public class ReskeyDaoImp implements ReskeyDao {
  private MongoTemplate mongoTemplate; 
	
	public MongoTemplate getMongoTemplate() {
		return mongoTemplate;
	}

	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}

	@Override
	public Reskeywords findOneByname(String name) {
		// TODO Auto-generated method stub
		return getMongoTemplate().findOne(new Query(Criteria.where("resname").is(name)), Reskeywords.class);
	}

	@Override
	public <List> Keyword findall() {
		// TODO Auto-generated method stub
		//return getMongoTemplate().find(new Query(), Keyword.class); 
		return null;
	}

}
