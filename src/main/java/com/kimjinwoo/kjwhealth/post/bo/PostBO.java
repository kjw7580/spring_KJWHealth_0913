package com.kimjinwoo.kjwhealth.post.bo;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.common.FileManagerService;
import com.kimjinwoo.kjwhealth.post.dao.PostDAO;
import com.kimjinwoo.kjwhealth.post.model.Post;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	public int addPost(int userId, String title, String content, MultipartFile file) {
		
		String filePath = null;
		if(file != null) {
			FileManagerService fileManager = new FileManagerService();
			
			filePath = fileManager.saveFile(userId, file);
			
			if(filePath == null) {
				return -1;
			}
		}
		
		return postDAO.insertPost(userId, title, content, filePath);
	}
	
	public List<Post> getHealthList(int userId, Integer nextId, Integer prevId) {
		if(nextId != null) {
			return postDAO.selectHealthListByNextId(userId, nextId);
		} else if(prevId != null) {	// 이전버튼
			// 11 12 13
			
			// 13 12 11
			List<Post> healthList = postDAO.selectHealthListByPrevId(userId, prevId);
			Collections.reverse(healthList);
			return healthList;
		}
		
		return postDAO.selectHealthList(userId);
	}
	
	public List<Post> getMainHealthList() {
		return postDAO.selectMainHealthList();
	}
	
	public boolean isLastPage(int userId, int nextId) {
		return postDAO.lastPost(userId).getId() == nextId;
	}
	
	public boolean isFirstPage(int userId, int prevId) {
		return postDAO.firstPost(userId).getId() == prevId;
	}
	
	public Post getHealth(int id, int userId) {
		return postDAO.selectHealth(id, userId);
	}
	
	public int updateHealth(int id, String subject, String content) {
		return postDAO.updatePost(id, subject, content);
	}
	
	public int deleteHealth(int id, int userId) {
		return postDAO.deletePost(id, userId);
	}
}
