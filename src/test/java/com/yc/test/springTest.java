package com.yc.test;


import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yc.bean.Goods;
import com.yc.bean.Species;
import com.yc.biz.GoodsBiz;
import com.yc.biz.SpeciesBiz;

import junit.framework.TestCase;

public class springTest extends TestCase {
    
    @Test
    public void testSpring1(){
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	DataSource ds=(DataSource) ac.getBean("dataSource");
    	System.out.println(ds);
    }
    @Test
    public void testSpring2(){
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	Object o= ac.getBean("sqlSessionFactory");
    	System.out.println(o);
    }
    @Test
    public void testSpring3(){
    	Species sp=new Species();
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	SpeciesBiz sb= (SpeciesBiz) ac.getBean("speciesBizImpl");
    	List<Species> list=sb.findAllSpecies1(sp);
    	System.out.println(list);
    }
    @Test
    public void testSpring4(){
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	GoodsBiz bdz= (GoodsBiz) ac.getBean("goodsBizImpl");
    	List<Goods> list=bdz.findIndexNewGoods();
    	System.out.println(list);
    }
   
}
