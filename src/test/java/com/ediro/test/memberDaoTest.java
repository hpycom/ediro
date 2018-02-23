package com.ediro.test;

import javax.inject.Inject;
//import javax.sql.DataSource;


import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ediro.domain.order.member;
import com.ediro.persistence.order.memberDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})

public class memberDaoTest {

	@Inject
	private memberDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(memberDaoTest.class);
	
	@Test
	public void getNowDate() throws Exception
	{
		dao.getNow();
	}
	
	@Test
	public void testCreate() throws Exception{
		member mem = new member();
		mem.setMemberID("hpycom");
		mem.setMemberPwd("7837@fire");
		mem.setCompanyName("이디아이로");
		mem.setBossName("조씨");
		mem.setBizRegNo("1111111111");
		mem.setPostno("11111");
		mem.setAddress("인천시 남구 용현2동 유원아파트 5동307호");
		mem.setPhone("01023326828");
		mem.setPhone_2("0328856828");
		mem.setEmail("hpycom@naver.com");
		mem.setHomepage("koreabook.or.kr");
		mem.setFax("2222222222");
		
		dao.createMember(mem);
		
	}
	
}
