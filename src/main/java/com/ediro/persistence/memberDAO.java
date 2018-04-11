package com.ediro.persistence;

import java.util.List;
import java.lang.*;
import com.ediro.domain.member;

public interface memberDAO {

	   public void createMember(member mem) throws Exception;
	   
	   public List<member> listAll() throws Exception;
	   
	   public int memberIDCount(String memberID) throws Exception;
	   
	   public void getNow() throws Exception;
	   
	   
}
