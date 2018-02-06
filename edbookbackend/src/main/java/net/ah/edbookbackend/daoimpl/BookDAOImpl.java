package net.ah.edbookbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.ah.edbookbackend.dao.BookDAO;
import net.ah.edbookbackend.dto.Book;

@Repository("bookDAO")
@Transactional
public class BookDAOImpl implements BookDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<Book> getCategoryBooks(String categoryName) {
		String sqlQuery ="from Book where categoryId in (select catId from Category where name=:cnam)";
		Query query =sessionFactory.getCurrentSession().createQuery(sqlQuery);
		query.setParameter("cnam", categoryName);
		return query.getResultList();
	}

}
