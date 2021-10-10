package com.kimjinwoo.kjwhealth.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.post.model.Criteria;
import com.kimjinwoo.kjwhealth.post.model.Post;

@Repository
public interface PostDAO {
	
	public int insertPost(
			@Param("userId") int userId
			, @Param("subject") String subject
			, @Param("content") String content
			, @Param("imagePath") String imagePath);
	
	public List<Post> selectMyHealthList(@Param("userId") int userId);
	
	public List<Post> selectMyPageList(@Param("userId") int userId);
	
	public List<Post> selectMainHealthList();
	
	public List<Post> selectPostHealthListView(@Param("word") String word
			, @Param("key") String key);
	
//	public List<Post> selectPageList();
	
	public List<Post> selectPostHealthList(@Param("id") int id);
	
//	public List<Post> selectHealthListByNextId(
//			@Param("userId") int userId
//			, @Param("nextId") int nextId);
//
//	public List<Post> selectHealthListByPrevId(
//			@Param("userId") int userId
//			, @Param("prevId") int prevId);
	
	// id가 가장 작은 행
//	public Post lastPost(@Param("userId") int userId);
	
	// id가 가장 큰 행
//	public Post firstPost(@Param("userId") int userId);
	
	public Post selectHealth(@Param("id") int id
			, @Param("userId") int userId);
	
	public int updatePost(@Param("id") int id
			, @Param("subject") String subject
			, @Param("content") String content);
	
	public int deletePost(@Param("id") int id
			, @Param("userId") int userId);
	
	public List<Post> listPaging(@Param("page") int page);
	
	public List<Post> listCriteria(Criteria criteria);
	
	public int countArticles(Criteria criteria);
	
	public List<Post> myListPaging(@Param("page") int page);
	
	public List<Post> myListCriteria(Criteria criteria);
	
	public int myCountArticles(Criteria criteria);
	
	public int countSubject(Criteria criteria);
	
	public List<Post> searchSubject(Criteria criteria);
	
	public int countContent(Criteria criteria);
	
	public List<Post> searchContent(Criteria criteria);
	
	public int countCreatedAt(Criteria criteria);
	
	public List<Post> searchCreatedAt(Criteria criteria);
	
	public int countSubjectContent(Criteria criteria);
	
	public List<Post> searchSubjectContent(Criteria criteria);
	
	public int countSubjectCreatedAt(Criteria criteria);
	
	public List<Post> searchSubjectCreatedAt(Criteria criteria);
	
	public int countContentCreatedAt(Criteria criteria);
	
	public List<Post> searchContentCreatedAt(Criteria criteria);
	
	public int countAll(Criteria criteria);
	
	public List<Post> searchAll(Criteria criteria);

}
