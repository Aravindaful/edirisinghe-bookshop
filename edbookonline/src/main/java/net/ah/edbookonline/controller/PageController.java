package net.ah.edbookonline.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import net.ah.edbookbackend.dao.BookDAO;
import net.ah.edbookbackend.dao.CategoryDAO;
import net.ah.edbookbackend.dto.Book;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private BookDAO bookDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		mv.addObject("categories", categoryDAO.getCategories());
		mv.addObject("allBooks", bookDAO.getLatestBooks());
		return mv;
	}

	@RequestMapping(value = { "/categorydetails","/productdetails/{id}/categorydetails"}, method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody String Submit(@RequestParam String categoryNam) {
		System.out.println("inside categorydetails controller method");
		List<Book> books = bookDAO.getCategoryBooks(categoryNam);
		/*
		 * if(books.size() != 0) { System.out.println("category returned " + categoryNam
		 * +" items :"+books.size()
		 * +" category Id "+books.get(0).getCategory().getCatId()); } else {
		 * System.out.println("books are not found"); }
		 * 
		 */
		System.out.println("Category books size" + books.size());
		String json = new Gson().toJson(books);
		return json;

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
		mv.addObject("categories", categoryDAO.getCategories());
		mv.addObject("allBooks", bookDAO.getAllBooksByOrder());
		return mv;
	}

	@RequestMapping(value = "/productdetails/{id}/products")
	public ModelAndView productDetails(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "ProductDetails");
		mv.addObject("userClickProductDetails", true);
		mv.addObject("categories", categoryDAO.getCategories());
		if (id == 0) {
			Book latestBook = bookDAO.getLatestBooks().get(0);
			mv.addObject("book", latestBook);
			mv.addObject("recoBooks", bookDAO.getRecommendedBooks(latestBook.getBookId()));

		} else {
			mv.addObject("book", bookDAO.getBookDetails(id));
			mv.addObject("recoBooks", bookDAO.getRecommendedBooks(id));

		}

		System.out.println("Categories size " + categoryDAO.getCategories().size());

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
