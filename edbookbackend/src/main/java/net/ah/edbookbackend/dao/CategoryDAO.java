package net.ah.edbookbackend.dao;

import java.util.List;

import net.ah.edbookbackend.dto.Book;
import net.ah.edbookbackend.dto.Category;

public interface CategoryDAO {
  List<Category> getCategories();
  Category getCategory(int id);
  
  boolean addCategory(Category category);
  boolean updateCategory(Category category);
  boolean deleteCategory(Category category);
 
}
