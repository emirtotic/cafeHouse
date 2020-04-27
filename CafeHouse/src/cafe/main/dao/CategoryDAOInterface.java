package cafe.main.dao;

import java.util.List;

import cafe.main.entity.Category;

public interface CategoryDAOInterface {
	
	public Category getCategory(int id);
	
	public List<Category> getCategoryList();
	
	public void saveCategory(Category category);
	
	public void deleteCategory(int id);
	
	public List<Category> getCategoryListOnMainPage();
	
	public List<Category> getCategoryListOnTodaySpecial();
	
	public List<Category> getCategoriesForFilter();

}
