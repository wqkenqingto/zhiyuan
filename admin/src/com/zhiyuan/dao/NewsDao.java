package com.zhiyuan.dao;

import java.util.List;

import com.zhiyuan.pojo.News;

public interface NewsDao {
	public void saveNews(News news);

	public List<News> loadNewsAll();

	public void deleteService(News news);

	public News loadOneNews(News news);

	public void updateNews(News news);
}
