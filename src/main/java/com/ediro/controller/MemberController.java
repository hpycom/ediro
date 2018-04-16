package com.ediro.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ediro.domain.*;
import com.ediro.service.*;
@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Inject
	private memService mService;
	
	@RequestMapping(value = "/order/member/joinMember", method = RequestMethod.GET)

	public String joinMember(Locale locale, Model model) throws Exception{
	
		logger.info("Welcome Register! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "order/member/joinMember";
	}

	@RequestMapping(value = "/order/member/joinMember", method = RequestMethod.POST)
	public String joinMember(member mem, Model model) throws Exception {
	
			
		//try {
			mService.join(mem);
		//} catch (Exception e) {
			//// TODO Auto-generated catch block
		//	e.printStackTrace();
		//}
		
		model.addAttribute("result", "success");
		return "redirect:/";
	}
	

}
