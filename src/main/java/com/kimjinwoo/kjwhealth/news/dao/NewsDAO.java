package com.kimjinwoo.kjwhealth.news.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.news.model.Criteria;
import com.kimjinwoo.kjwhealth.news.model.News;

@Repository
public interface NewsDAO {
	
	public int insertNews(
			@Param("title") String title
			, @Param("imagePath") String imagePath
			, @Param("content") String content);
	
	public List<News> selectNews();
	
	public List<News> listCriteria(Criteria criteria);
	
	public int countArticles(Criteria criteria);

}
