package com.zhiyuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyuan.dao.NewsDao;
import com.zhiyuan.pojo.News;
@Repository("newsDaoImpl")
public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao {
	@Resource
	public void setSessionFactory01(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public void saveNews(News news) {
		super.getSession().save(news);	
	}

	@Override
	public List<News> loadNewsAll() {
		Criteria criteria=super.getSession().createCriteria(News.class);
		List<News>nelist=criteria.list();
		return nelist;
	}

	@Override
	public void deleteService(News news) {
		super.getSession().delete(news);
	}

	@Override
	public News loadOneNews(News news) {
		
		return (News) super.getSession().get(News.class,news.getNid());
	}

	@Override
	public void updateNews(News news) {
			super.getSession().update(news);
		}
	
	
}
