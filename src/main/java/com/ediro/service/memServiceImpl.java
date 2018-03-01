package com.ediro.service;

import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.ediro.domain.member;
import com.ediro.persistence.memberDAO;

@Service
public class memServiceImpl implements memService {
	@Inject
	private memberDAO dao;
	
	@Override
	public void join(member mem) throws Exception{
		dao.createMember(mem);
	}
	@Override
	public List<member> memberAll() throws Exception{
		return dao.listAll();
	}
}
