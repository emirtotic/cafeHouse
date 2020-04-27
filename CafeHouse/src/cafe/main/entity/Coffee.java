package cafe.main.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Coffee {
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column
	private String name;
	@Column
	private String image;
	@Column
	private String price;
	@Column
	private String description;
	@Column
	private boolean showOnTodaySpecial;
	@Column
	private boolean showOnMenuPage;
	
	@JoinColumn(name = "categoryId")
	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Category category;
	
	public Coffee() {
		
	}

	public Coffee(String name, String image, String price, String description) {
		super();
		this.name = name;
		this.image = image;
		this.price = price;
		this.description = description;
	}

	public Coffee(String name, String image, String price, String description, Category category) {
		super();
		this.name = name;
		this.image = image;
		this.price = price;
		this.description = description;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean getShowOnTodaySpecial() {
		return showOnTodaySpecial;
	}

	public void setShowOnTodaySpecial(boolean showOnTodaySpecial) {
		this.showOnTodaySpecial = showOnTodaySpecial;
	}

	public boolean getShowOnMenuPage() {
		return showOnMenuPage;
	}

	public void setShowOnMenuPage(boolean showOnMenuPage) {
		this.showOnMenuPage = showOnMenuPage;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Coffee [name=" + name + "]";
	}
	
	
	
	
	

}
