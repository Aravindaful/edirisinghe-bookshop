package net.ah.edbookonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
	}

	
	@RequestMapping(value = "/profile")
	public ModelAndView profile() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Profile");
		mv.addObject("userClickProfile", true);
		return mv;
	}
	
	@RequestMapping(value = "/cart")
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Cart");
		mv.addObject("userClickCart", true);
		return mv;
	}
	
	@RequestMapping(value = "/loginReg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Login/Register");
		mv.addObject("userClickLoginReg", true);
		return mv;
	}
	
	@RequestMapping(value = "/products")
	public ModelAndView product() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Products");
		mv.addObject("userClickProducts", true);
		return mv;
	}
	
	@RequestMapping(value = "/productdetails")
	public ModelAndView productDetails() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "ProductDetails");
		mv.addObject("userClickProductDetails", true);
		return mv;
	}
	
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact");
		mv.addObject("userClickContact", true);
		return mv;
	}
}
