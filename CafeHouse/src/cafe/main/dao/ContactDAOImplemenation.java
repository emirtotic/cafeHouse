package cafe.main.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cafe.main.entity.Contact;

@Repository
public class ContactDAOImplemenation implements ContactDAOInterface {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public Contact getContact(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Contact contact = session.get(Contact.class, id);
		
		return contact;
	}

	@Transactional
	@Override
	public List<Contact> getContactList() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Contact> query = session.createQuery("from Contact", Contact.class);
		
		List<Contact> contactList = query.getResultList();
		
		return contactList;
	}

	@Transactional
	@Override
	public void deleteContact(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("delete from Contact where id = :id");
		
		query.setParameter("id", id);
		
		query.executeUpdate();

	}

	@Transactional
	@Override
	public void saveContact(Contact contact) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(contact);
		
	}

}
