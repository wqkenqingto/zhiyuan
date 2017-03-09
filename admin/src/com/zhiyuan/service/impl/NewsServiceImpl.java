package com.zhiyuan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyuan.dao.NewsDao;
import com.zhiyuan.pojo.News;
import com.zhiyuan.service.NewsService;
@Service("newsServiceImpl")
public class NewsServiceImpl implements NewsService {
			
			@Resource(name="newsDaoImpl")
			private NewsDao newsDaoImpl;

			@Override
			public void saveNewsService(News news) {
					newsDaoImpl.saveNews(news);
			}

			@Override
			public List<News> loadAllNewsService() {
				return newsDaoImpl.loadNewsAll();
			}

			@Override
			public void deleteNewsService(News news) {
					newsDaoImpl.deleteService(news);
			}

			@Override
			public News loadoneNewsService(News news) {
				
				return newsDaoImpl.loadOneNews(news);
			}

			@Override
			public void updateNewsService(News news) {
					newsDaoImpl.updateNews(news);
			}
	
			
			
}
