package cafe.main.dao;

import java.util.List;

import cafe.main.entity.Coffee;

public interface CoffeeDAOInterface {
	
	public List<Coffee> getCoffeeList();
	
	public Coffee getCoffee(int id);
	
	public void saveCoffee(Coffee coffee);
	
	public void deleteCoffee(int id);
	
	public List<Coffee> getCoffeeListOnTodaySpecial();
	
	public List<Coffee> getCoffeeListOnMenuPage();
	
	public List<Coffee> getCoffeeListByCategory(int id);

}
