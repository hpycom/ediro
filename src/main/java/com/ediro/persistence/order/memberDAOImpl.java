package com.ediro.persistence.order;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ediro.domain.order.member;

@Repository
public class memberDAOImpl  implements memberDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.ediro.mapper.order.member";

	@Override
	public void getNow() throws Exception{
		session.selectOne(namespace+".getTime");
	}
	@Override
	public void createMember(member mem) throws Exception {
		
		session.insert(namespace + ".insertMember",mem);
	
	}

	@Override
	public List<member> listAll() throws Exception {
		return session.selectList(namespace+".sel_allMember");
		
	}
	

}
