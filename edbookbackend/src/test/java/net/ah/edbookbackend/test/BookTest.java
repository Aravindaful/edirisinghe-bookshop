package net.ah.edbookbackend.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.ah.edbookbackend.dao.BookDAO;
import net.ah.edbookbackend.dto.Book;

public class BookTest {
	private static AnnotationConfigApplicationContext context;
	private static BookDAO bookDAO;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.ah.edbookbackend");
		context.refresh();
		bookDAO = (BookDAO) context.getBean("bookDAO");
	}

	@Test
	public void testCategoryItems() {
		 List<Book> bookList =bookDAO.getCategoryBooks("Political");
		// assertEquals("Successfully fetched the list of
		// categories",categoryItems,categoryDAO.getCategoryItems("Novels"));
		 
         System.out.println(bookList.size());
	}
}