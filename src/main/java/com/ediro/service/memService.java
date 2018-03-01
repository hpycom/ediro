package com.ediro.service;

import java.util.List;
import com.ediro.domain.member;;

public interface memService {
	
	public void join(member mem) throws Exception;
	public List<member> memberAll() throws Exception;

}
