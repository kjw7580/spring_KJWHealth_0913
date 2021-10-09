package com.kimjinwoo.kjwhealth.post.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.post.model.Criteria;
import com.kimjinwoo.kjwhealth.post.model.Post;

@Repository
public abstract class PostDAOImpl implements PostDAO {
	
	private static final String NAMESPACE = "com.kimjinwoo.kjwhealth.post.dao.PostDAO";
	
	private final SqlSession sqlSession;
	
	public PostDAOImpl(SqlSession sqlSession) { 
		this.sqlSession = sqlSession; 
	}

//	@Override 
//	public List<Post> listPaging(int page) throws Exception { 
//		if (page <= 0) { 
//			page = 1; } 
//		
//		page = (page - 1) * 10; 
//		
//		return sqlSession.selectList(NAMESPACE + ".listPaging", page); 
//	}
//	
//	@Override
//	public List<Post> listCriteria(Criteria criteria) throws Exception { 
//		return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria); 
//	}


}
