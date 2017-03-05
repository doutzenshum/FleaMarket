package com.yc.dao;

import java.util.List;
import java.util.Map;


public interface BaseDao<T>  {
	
    public List<T> findAll ( T t,String sqlId);
    
    public List<T> findAll ( T t,Map map,String sqlId);
    
    public void update(T t, String sqlId);
    
    public void updateMany( T t, List list, String sqlId);//update xxx set pname=xxx where id in(......);
    
    public void updateMap( T t, Map map, String sqlId);//可以分页查   select * from　ｘｘｘ　limit 1,5        Map      start=1,end=5
    
    public void add(T t, String sqlId);
    
    public void addMany( T t, List list, String sqlId);
    
    public void addMap( T t, Map map, String sqlId);
    
    public void delete( T t, String sqlId);
    
    public void deleteMany( T t, List list, String sqlId);//delete from xx where id in(.....);
    
    public void deleteMap( T t, Map map, String sqlId);

    //聚合函数
    public double findFunc( T t, String sqlId);
    
    public double findFuncMap( T t, Map map,  String sqlId);
    
    
    
    
}

