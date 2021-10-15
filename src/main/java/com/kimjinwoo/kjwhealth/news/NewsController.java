package com.kimjinwoo.kjwhealth.news;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kimjinwoo.kjwhealth.news.bo.NewsBO;
import com.kimjinwoo.kjwhealth.news.model.Criteria;
import com.kimjinwoo.kjwhealth.news.model.News;
import com.kimjinwoo.kjwhealth.news.model.PageMaker;

@Controller
@RequestMapping("/post")
public class NewsController {

	@Autowired
	private NewsBO newsBO;
	
	@GetMapping("/news/create")
	public String newsCreateView() {
		return "/post/newsCreateView";
	}
	
	@GetMapping("/news")
	public String newView(Model model
			, Criteria criteria) throws Exception {
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(newsBO.countArticles(criteria));
		
		model.addAttribute("articles", newsBO.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);
		
		return "post/news";
		
	}
	
	@GetMapping("/news_list_paging")
	public String newListPagingView(Model model
			, Criteria criteria) throws Exception {
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(newsBO.countArticles(criteria));
		
		model.addAttribute("articles", newsBO.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);
		
		return "post/newsListPaging";
		
	}
	
	@GetMapping("/detail_news")
	public String detailNewsView(Model model) {
		
		List<News> NewsList = newsBO.getNews();
		
		model.addAttribute("NewsList", NewsList);
		
		return "post/detailNewsView";
	}
}
