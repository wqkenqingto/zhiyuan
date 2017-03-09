package com.zhiyuan.dao;

import java.util.List;

import com.zhiyuan.pojo.News;

public interface NewsDao {

	public List<News> loadNewsAll();


	public News loadOneNews(News news);

}
