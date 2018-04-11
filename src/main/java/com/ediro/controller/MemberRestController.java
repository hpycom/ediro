package com.ediro.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ediro.service.memService;

import java.text.*;

@RestController
@RequestMapping("order/member_rest")
public class MemberRestController {

	@Inject
	private memService mService;
	
	@RequestMapping(value="/isMember/{memberID}",method=RequestMethod.POST)
	public int isMemberID(@PathVariable("memberID") String memID)
	{
		int memCnt = 0;
		try {
			memCnt = mService.memberIDCount(memID);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memCnt;
		
	}
	
	
}
