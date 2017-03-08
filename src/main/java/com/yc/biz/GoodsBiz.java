package com.yc.biz;

import java.util.List;

import com.yc.bean.Goods;

public interface GoodsBiz {

	List<Goods> findIndexNewGoods();
	
	List<Goods> findRecommandGoods();

}
