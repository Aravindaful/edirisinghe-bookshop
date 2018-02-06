package net.ah.edbookbackend.dao;

import java.util.List;

import net.ah.edbookbackend.dto.Book;
public interface BookDAO {
    List<Book> getCategoryBooks(String categoryName);
}
