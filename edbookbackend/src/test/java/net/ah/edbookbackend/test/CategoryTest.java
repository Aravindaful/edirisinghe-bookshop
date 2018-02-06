package net.ah.edbookbackend.test;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.ah.edbookbackend.dao.CategoryDAO;
import net.ah.edbookbackend.dto.Book;
import net.ah.edbookbackend.dto.Category;

public class CategoryTest {
   
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	private Category category;
	private List<Book> categoryItems;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.ah.edbookbackend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}
	
	/*@Test
	public void testGetCategory() {
		assertEquals("Successfully fetched the list of categories",10,categoryDAO.getCategories().size());
	}
	
	*/
	
	
	
}
