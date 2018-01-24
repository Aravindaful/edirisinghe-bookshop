package net.ah.edbookonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
   
	@RequestMapping(value= {"/","/home","/index"})
	public void index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting","hello new spring project");
		
		 
		//return mv;
	}
}
