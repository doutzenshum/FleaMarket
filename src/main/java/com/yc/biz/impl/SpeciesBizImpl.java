package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Species;
import com.yc.biz.SpeciesBiz;
import com.yc.dao.BaseDao;

@Service
public class SpeciesBizImpl implements SpeciesBiz {

	private BaseDao baseDao;

	@Resource(name="baseDaoMybatisImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	@Override
	public List<Species> findAllSpecies1(Species sp) {
		List<Species> list=this.baseDao.findAll(sp, "getAllSpecies1");
		if( list==null || list.size()<0){
			return null;
		}
		return list;
	}

}
