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
import com.yc.biz.GoodsBiz;
import com.yc.web.utils.UploadFileUtil;
import com.yc.web.utils.UploadFileUtil.UploadFile;

@Controller
public class GoodsController {
	private static final Log logger=LogFactory.getLog(GoodsController.class);

	private GoodsBiz goodsBiz;

	@Resource(name="goodsBizImpl")
	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	//根据物品状态查找
	//,produces="application/json;charset=utf-8"
	@RequestMapping(value="/showIndexGoods_goods.action",produces="text/html;charset=utf-8")
	//@ResponseBody指返回的内容(String)当成是响应协议中实体部分的内容
	public @ResponseBody String findIndexNewGoods(Model model){
		logger.info("findIndexNewGoods called..");
		//向model中存入模型对象
		List<Goods> goodsList=this.goodsBiz.findIndexNewGoods();
		System.out.println(goodsList);
		Gson gson=new Gson();
		return gson.toJson(goodsList);
	}

		//推荐商品
		//,produces="application/json;charset=utf-8"
		@RequestMapping(value="/showRecommandGoods_goods.action",produces="text/html;charset=utf-8")
		//@ResponseBody指返回的内容(String)当成是响应协议中实体部分的内容
		public @ResponseBody String findRecommandGoods(Model model){
			logger.info("findIndexNewGoods called..");
			//向model中存入模型对象
			List<Goods> goodsList=this.goodsBiz.findRecommandGoods();
			Gson gson=new Gson();
			return gson.toJson(goodsList);
		}
}
