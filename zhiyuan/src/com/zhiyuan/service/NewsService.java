package com.zhiyuan.service;

import java.util.List;

import com.zhiyuan.pojo.News;

public interface NewsService {


	public List<News> loadAllNewsService();


	public News loadoneNewsService(News news);


}
