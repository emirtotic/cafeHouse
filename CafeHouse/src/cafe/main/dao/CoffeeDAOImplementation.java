package cafe.main.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cafe.main.entity.Coffee;

@Repository
public class CoffeeDAOImplementation implements CoffeeDAOInterface {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public List<Coffee> getCoffeeList() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Coffee> query = session.createQuery("from Coffee", Coffee.class);
		
		List<Coffee> coffeeList = query.getResultList();
		
		return coffeeList;
	}

	@Transactional
	@Override
	public Coffee getCoffee(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Coffee coffee = session.get(Coffee.class, id);
		
		return coffee;
	}

	@Transactional
	@Override
	public void saveCoffee(Coffee coffee) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(coffee);
		
	}

	@Transactional
	@Override
	public void deleteCoffee(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("delete from Coffee where id=:id");
		
		query.setParameter("id", id);
		
		query.executeUpdate();
		
	}

	@Transactional
	@Override
	public List<Coffee> getCoffeeListOnTodaySpecial() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Coffee> query = session.createQuery("select c from Coffee c where c.showOnTodaySpecial = 1");
		
		List<Coffee> coffeeListOnTodaySpecial = query.getResultList();
		
		return coffeeListOnTodaySpecial;
	}

	@Transactional
	@Override
	public List<Coffee> getCoffeeListOnMenuPage() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Coffee> query = session.createQuery("select c from Coffee c where c.showOnMenuPage = 1");
		
		List<Coffee> coffeeListOnMenuPage = query.getResultList();
		
		return coffeeListOnMenuPage;
		
	}
	
	@Transactional
	@Override
	public List<Coffee> getCoffeeListByCategory(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Coffee> query = session.createQuery("from Coffee coffee where coffee.category.id = :id");
		query.setParameter("id", id);
		
		return query.getResultList();
	}
	
}
