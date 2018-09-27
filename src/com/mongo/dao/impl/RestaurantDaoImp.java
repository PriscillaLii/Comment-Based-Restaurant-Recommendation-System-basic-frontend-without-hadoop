package com.mongo.dao.impl;

import java.util.List;

import org.springframework.data.document.mongodb.MongoTemplate;
import org.springframework.data.document.mongodb.query.Criteria;
import org.springframework.data.document.mongodb.query.Query;
import org.springframework.data.document.mongodb.query.Update;

import com.mongo.bean.Comment;
import com.mongo.bean.Restaurant;
import com.mongo.dao.RestaurantDao;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;

public class RestaurantDaoImp implements RestaurantDao {

	private MongoTemplate mongoTemplate; 
	
	public MongoTemplate getMongoTemplate() {
		return mongoTemplate;
	}

	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}

	@Override
	public void insert(Restaurant restaurant) {
		// TODO Auto-generated method stub
		getMongoTemplate().insert(restaurant);
	}

	@Override
	public Restaurant findOne(String id) {
		// TODO Auto-generated method stub
		return getMongoTemplate().findOne(new Query(Criteria.where("id").is(id)),Restaurant.class);
	}

	@Override
	public Restaurant findOneByname(String name) {
		// TODO Auto-generated method stub
		Restaurant c= getMongoTemplate().findOne(new Query(Criteria.where("name").is(name)
	                .and("comment.username").is("dxd")),Restaurant.class);
		 return getMongoTemplate().findOne(new Query(Criteria.where("name").is(name)), Restaurant.class); 
	}

	@Override
	public List<Restaurant> findAll() {
		// TODO Auto-generated method stub
		return getMongoTemplate().find(new Query(), Restaurant.class);   
	}

	@Override
	public List<Restaurant> findByRegex(String regex) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeOne(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeAll() {
		// TODO Auto-generated method stub

	}

	@Override
	public void findAndModify(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insertComment(Restaurant restaurant, Comment comment) {
		// TODO Auto-generated method stub
		       System.out.println(comment.getContent());
		       System.out.println(restaurant.getName());
		       Restaurant r = this.findOneByname(restaurant.getName());
		       System.out.println(r.getIntro());
		        Query query = Query.query(Criteria.where("name").is(restaurant.getName()));
		        Update update = new Update();
		        update.addToSet("comment", comment.ConverttoBO());
		        getMongoTemplate().updateMulti(query, update);
		   
		
	}

	@Override
	public void deleteComment(Restaurant restaurant, Comment comment) {
		// TODO Auto-generated method stub
		Query query = Query.query(Criteria.where("name").is(restaurant.getName())
                .and("comment.username").is("lsb"));
        Update update = new Update();
        update.unset("comment.$");
        getMongoTemplate().updateFirst(query, update);
	}

	
	public void updateComment(Restaurant restaurant, Comment comment) {
		// TODO Auto-generated method stub
		Query query = Query.query(Criteria.where("name").is(restaurant.getName())
                .and("comment.username").is("dxd"));
        Update update = new Update();
        update.set("comment.$.content","bad");
        getMongoTemplate().updateMulti(query, update);
	}

}
