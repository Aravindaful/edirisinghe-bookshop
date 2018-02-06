package net.ah.edbookbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.ah.edbookbackend.dao.CategoryDAO;
import net.ah.edbookbackend.dto.Book;
import net.ah.edbookbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Category> getCategories() {

		String sqlQuery = "from Category";
		Query query = sessionFactory.getCurrentSession().createQuery(sqlQuery);
		return query.getResultList();

	}

	@Override
	public Category getCategory(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	 

}
