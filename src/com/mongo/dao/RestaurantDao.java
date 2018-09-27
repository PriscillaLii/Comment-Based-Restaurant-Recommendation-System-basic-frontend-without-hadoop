package com.mongo.dao;

import java.util.List;

import com.mongo.bean.Comment;
import com.mongo.bean.Restaurant;

public interface RestaurantDao {
    public void insert(Restaurant restaurant); 
	
	
    public Restaurant findOne(String id);   
    
    public Restaurant findOneByname(String name);  
   
    public List<Restaurant> findAll();   
    
    public List<Restaurant> findByRegex(String regex);
   
    public void removeOne(String id);   
   
    public void removeAll();   
    
    public void findAndModify(String id);
    
    public void insertComment(Restaurant restaurant,Comment comment); 
    
    public void deleteComment(Restaurant restaurant,Comment comment); 
    
    public void updateComment(Restaurant restaurant,Comment comment); 
}
