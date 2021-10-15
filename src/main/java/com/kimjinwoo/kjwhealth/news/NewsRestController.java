package com.kimjinwoo.kjwhealth.news;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.news.bo.NewsBO;

@RestController
@RequestMapping("/post")
public class NewsRestController {
	
	@Autowired
	private NewsBO newsBO;
	
	@PostMapping("/news/create")
	public Map<String, String> create(
			@RequestParam("title") String title
			, @RequestParam(value="file", required=false) MultipartFile file
			, @RequestParam("content") String content) {
		
		int count = newsBO.addNews(title, file, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}

}
