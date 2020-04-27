package cafe.main;

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
import cafe.main.entity.Contact;

@Controller
@RequestMapping("/")
public class FrontController {

	@Autowired
	private CategoryDAOInterface categoryDAO;
	
	@Autowired
	private CoffeeDAOInterface coffeeDAO;
	
	@Autowired
	private ContactDAOInterface contactDAO;
	
	@RequestMapping({"/","/index-page"})
	public String getMainPage(Model model) {
		
		model.addAttribute("categoryList", categoryDAO.getCategoryListOnMainPage());
		model.addAttribute("coffeeList", coffeeDAO.getCoffeeListOnTodaySpecial());
		
		
		return "front/index-page";
	}
	
	@RequestMapping("/today-special-page")
	public String getSpecialPage(Model model) {
		
		model.addAttribute("categoryList", categoryDAO.getCategoryListOnTodaySpecial());
		model.addAttribute("coffeeList", coffeeDAO.getCoffeeListOnTodaySpecial());
		
		
		return "front/today-special-page";
	}
	
	@RequestMapping("/menu-page")
	public String getMenuPage(Model model) {
		
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		
		
		
		return "front/menu-page";
	}
	
	@RequestMapping("/coffee-page-filter")
	public String getCoffeePageFilter(@RequestParam int id, @RequestParam String type, Model model) {
		
		if (type.equalsIgnoreCase("category")) {

			model.addAttribute("categoryList", categoryDAO.getCategoriesForFilter());
			
			
			model.addAttribute("coffeeList", coffeeDAO.getCoffeeListByCategory(id));
				
		}
		
		return "front/menu-page";
	}
	
	@RequestMapping("/contact-page")
	public String getContactPage(Model model) {
		
		model.addAttribute("contact", new Contact());
		
		return "front/contact-page";
	}
	
	@RequestMapping("/contact-save")
	public String saveContact(@Valid @ModelAttribute Contact contact, BindingResult result) {
		
		if (result.hasErrors()) {
			
			return "redirect:/contact-page";
		}
		
		contactDAO.saveContact(contact);
		
		return "front/contact-page";
	}
	
	@RequestMapping("/about-page")
	public String getAboutPage() {
		return "front/about-page";
	}
	
}
