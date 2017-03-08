package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.yc.bean.Goods;
import com.yc.biz.GoodsBiz;
import com.yc.dao.BaseDao;

@Service
public class GoodsBizImpl implements GoodsBiz{

	private BaseDao baseDao;

	@Resource(name="baseDaoMybatisImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	//上架的
	@Override
	public List<Goods> findIndexNewGoods() {
		List<Goods> list=baseDao.findAll(new Goods(), "findIndexNewGoods");
		return list;
	}

	//推荐的
	@Override
	public List<Goods> findRecommandGoods() {
		List<Goods> list=baseDao.findAll(new Goods(), "findRecommandGoods");
		return list;
	}

}
