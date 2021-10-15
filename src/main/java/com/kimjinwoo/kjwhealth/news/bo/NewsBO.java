package com.kimjinwoo.kjwhealth.news.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.common.FileManagerService;
import com.kimjinwoo.kjwhealth.news.dao.NewsDAO;
import com.kimjinwoo.kjwhealth.news.model.Criteria;
import com.kimjinwoo.kjwhealth.news.model.News;

@Service
public class NewsBO {
	
	@Autowired
	private NewsDAO newsDAO;
	
	public int addNews(String title, MultipartFile file, String content) {
		
		String filePath = null;
		if(file != null) {
			FileManagerService fileManager = new FileManagerService();
			
			filePath = fileManager.saveFile(0, file);
			
			if(filePath == null) {
				return -1;
			}
		}
		
		return newsDAO.insertNews(title, filePath, content);
	}
	
	public List<News> getNews(int id) {
		return newsDAO.selectNews(id);
	}
	
	public List<News> getMainNews() {
		return newsDAO.selectMainNews();
	}
	
	public List<News> listCriteria(Criteria criteria) throws Exception { 
		return newsDAO.listCriteria(criteria);
	}
	
	public int countArticles(Criteria criteria) throws Exception { 
		return newsDAO.countArticles(criteria);
	}
		
}
