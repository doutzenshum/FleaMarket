package com.yc.web.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yc.bean.Goods;
import com.yc.bean.Species;
import com.yc.biz.GoodsBiz;
import com.yc.biz.SpeciesBiz;
import com.yc.web.utils.UploadFileUtil;
import com.yc.web.utils.UploadFileUtil.UploadFile;

@Controller
public class SpeciesController {
	private static final Log logger=LogFactory.getLog(SpeciesController.class);

	private SpeciesBiz speciesBiz;

	@Resource(name="speciesBizImpl")
	public void setSpeciesBiz(SpeciesBiz speciesBiz) {
		this.speciesBiz = speciesBiz;
	}

	//根据物品状态查找
	//,produces="application/json;charset=utf-8"
	@RequestMapping(value="/showAllSpecies_species.action",produces="text/html;charset=utf-8")
	//@ResponseBody指返回的内容(String)当成是响应协议中实体部分的内容
	public @ResponseBody String findAllSpecies(Model model){
		Species sp=new Species();
		sp.setSpeciesid(12);
		logger.info("findAllSpecies called..");
		//向model中存入模型对象
		List<Species> speciesList=this.speciesBiz.findAllSpecies1(sp);
		System.out.println(speciesList);
		Gson gson=new Gson();
		return gson.toJson(speciesList);
	}


		
}
