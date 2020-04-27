package cafe.main.dao;

import java.util.List;

import cafe.main.entity.Contact;

public interface ContactDAOInterface {
	
	public Contact getContact(int id);
	
	public List<Contact> getContactList();
	
	public void deleteContact(int id);

	public void saveContact(Contact contact);
}
