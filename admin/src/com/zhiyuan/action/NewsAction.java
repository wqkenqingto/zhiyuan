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
	public String saveNews(){
		Date date=new Date();
		news.setUpdtime(date);
		newsServiceImpl.saveNewsService(news);
		return "saveok";
	}
	public String updateNews(){
		Date date =new Date();
		news.setUpdtime(date);
		newsServiceImpl.updateNewsService(news);
		return  "updateok";
	}
	public String loadAllNews(){
		List<News>nelist=newsServiceImpl.loadAllNewsService();
		req.put("nelist",nelist);
		return "loadallok";
	}
	public String deleteNews(){
		newsServiceImpl.deleteNewsService(news);
		return "deleteok";
	}
	public String loadoneNews(){
		news= newsServiceImpl.loadoneNewsService(news);
		req.put("news",news);
		return "loadone";
	}
	
}
