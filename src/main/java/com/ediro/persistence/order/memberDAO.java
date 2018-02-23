package com.ediro.persistence.order;

import java.util.List;
import com.ediro.domain.order.*;

public interface memberDAO {

	   public void createMember(member mem) throws Exception;
	   
	   public List<member> listAll() throws Exception;
	   
	   public void getNow() throws Exception;
}
