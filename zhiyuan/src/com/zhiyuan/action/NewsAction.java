package com.zhiyuan.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.zhiyuan.pojo.News;
import com.zhiyuan.service.NewsService;
@Controller("newsAction")
public class NewsAction  extends BaseAction{
	
		private News news;
		@Resource(name="newsServiceImpl")
		private NewsService newsServiceImpl;
		public News getNews() {
			return news;
		}
		public void setNews(News news) {
			this.news = news;
		}	
	
	public String loadAllNews(){
		System.out.println("进入了加载所有新闻-----------------");
		List<News>nlist=newsServiceImpl.loadAllNewsService();
		req.put("nlist",nlist);
		System.out.println(nlist.size()+"---------------------");
		
		System.out.println("加载完成--------------------");
		return "loadallok";
	}	
	//--------------------����һ��news--------------------
	public String loadoneNews(){
		news= newsServiceImpl.loadoneNewsService(news);
		req.put("news",news);
		return "loadone";
	}
}
