package cafe.main;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cafe.main.dao.CategoryDAOInterface;
import cafe.main.dao.CoffeeDAOInterface;
import cafe.main.dao.ContactDAOInterface;
import cafe.main.entity.Category;
import cafe.main.entity.Coffee;
import cafe.main.entity.Contact;

@Controller
@RequestMapping("/administration")
public class AdminController {

	@Autowired
	private CategoryDAOInterface categoryDAO;

	@Autowired
	private CoffeeDAOInterface coffeeDAO;
	
	@Autowired
	private ContactDAOInterface contactDAO;
	
	
	
	// CATEGORY !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	@RequestMapping("/category-list")
	public String getCategoryList(Model model) {

		List<Category> categoryList = categoryDAO.getCategoryList();
		model.addAttribute("categoryList", categoryList);

		return "category-list";
	}

	@RequestMapping("/category-delete")
	public String deleteCategory(@RequestParam int id) {

		categoryDAO.deleteCategory(id);

		return "redirect:/administration/category-list";
	}

	@RequestMapping("/category-save")
	public String saveCategory(@Valid @ModelAttribute Category category, BindingResult result) {

		if (result.hasErrors()) {
			return "category-form";
		} else {

			categoryDAO.saveCategory(category);

			return "redirect:/administration/category-list";

		}

	}

	@RequestMapping("/category-form-update")
	public String getCategoryUpdateForm(@RequestParam int id, Model model) {

		Category category = categoryDAO.getCategory(id);

		model.addAttribute("category", category);

		return "category-form";
	}

	@RequestMapping("/category-form")
	public String getCategoryForm(Model model) {

		Category category = new Category();
		model.addAttribute("category", category);

		return "category-form";
	}

	
	
	// COFFEE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	
	@RequestMapping("/coffee-list")
	public String getCoffeeList(Model model) {
		
		List<Coffee> coffeeList = coffeeDAO.getCoffeeList();
		model.addAttribute("coffeeList", coffeeList);

		return "coffee-list";
	}
	
	@RequestMapping("/coffee-delete")
	public String deleteCoffee(@RequestParam int id) {

		coffeeDAO.deleteCoffee(id);

		return "redirect:/administration/coffee-list";
	}
	
	
	@RequestMapping("/coffee-save")
	public String saveCoffee(@Valid @ModelAttribute Coffee coffee, BindingResult result) {

		if (result.hasErrors()) {
			return "coffee-form";
		} else {

			coffeeDAO.saveCoffee(coffee);

			return "redirect:/administration/coffee-list";

		}

	}
	
	@RequestMapping("/coffee-form-update")
	public String getCoffeeUpdateForm(@RequestParam int id, Model model) {

		Coffee coffee = coffeeDAO.getCoffee(id);

		model.addAttribute("coffee", coffee);
		model.addAttribute("categoryList", categoryDAO.getCategoryList());

		return "coffee-form";
	}
	
	
	@RequestMapping("/coffee-form")
	public String getCoffeeForm(Model model) {

		Coffee coffee = new Coffee();
		model.addAttribute("coffee", coffee);
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		
		return "coffee-form";
	}
	
	@RequestMapping("/contact-list")
	public String getContactList(Model model) {
		
		List<Contact> contactList = contactDAO.getContactList();
		model.addAttribute("contactList", contactList);
		
		return "contact-list";
	}
	
	@RequestMapping("/contact-delete")
	public String deleteContact(@RequestParam int id) {

		contactDAO.deleteContact(id);

		return "redirect:/administration/contact-list";
	}
	
}
