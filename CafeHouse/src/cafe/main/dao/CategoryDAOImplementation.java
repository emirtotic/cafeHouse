package cafe.main.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cafe.main.entity.Category;

@Repository
public class CategoryDAOImplementation implements CategoryDAOInterface {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public Category getCategory(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Category category = session.get(Category.class, id);
		
		return category;
	}

	@Transactional
	@Override
	public List<Category> getCategoryList() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Category> query = session.createQuery("from Category", Category.class);
		
		List<Category> categoryList = query.getResultList();
		
		return categoryList;
	}

	@Transactional
	@Override
	public void saveCategory(Category category) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(category);

	}

	@Transactional
	@Override
	public void deleteCategory(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("delete from Category where id = :id");
		
		query.setParameter("id", id);
		
		query.executeUpdate();

	}

	@Transactional
	@Override
	public List<Category> getCategoryListOnMainPage() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Category> query = session.createQuery("select c from Category c where c.showOnMainPage = 1");
		
		List<Category> categoriesOnMainPage = query.getResultList();
		
		return categoriesOnMainPage;
	}

	@Transactional
	@Override
	public List<Category> getCategoryListOnTodaySpecial() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Category> query = session.createQuery("select c from Category c where c.showOnPopularItems = 1");
		
		List<Category> categoriesOnPopularItems = query.getResultList();
		
		return categoriesOnPopularItems;
	}
	
	@Transactional
	@Override
	public List<Category> getCategoriesForFilter() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Category> query = session.createQuery("from Category");
		
		List<Category> categoryList = query.getResultList();
		
		for (Category cat : categoryList) {
			
			Query queryCount = session.createQuery("select count(coffee.id) from Coffee coffee where coffee.category.id= :id");
			
			queryCount.setParameter("id", cat.getId());
			
			cat.setCount((long) queryCount.uniqueResult());
			
		}
		
		return categoryList;
	}

}
