package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.News;

public interface NewsService {

	 public  void saveNewsService(News news);

	public List<News> loadAllNewsService();

	public void deleteNewsService(News news);

	public News loadoneNewsService(News news);

	public void updateNewsService(News news);

}
