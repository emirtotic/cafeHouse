package cafe.main.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

@Entity
@Table
public class Category {

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column
	@Size(min = 2, max = 20, message = "min 2, max 20 characters")
	private String name;
	@Column
	private String image;
	@Column
	private String description;
	@Column
	private boolean showOnMainPage;
	@Column
	private boolean showOnPopularItems;
	@Transient
	private long count;
	
	public Category() {
		
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean getShowOnMainPage() {
		return showOnMainPage;
	}

	public void setShowOnMainPage(boolean showOnMainPage) {
		this.showOnMainPage = showOnMainPage;
	}

	public boolean getShowOnPopularItems() {
		return showOnPopularItems;
	}

	public void setShowOnPopularItems(boolean showOnPopularItems) {
		this.showOnPopularItems = showOnPopularItems;
	}
	
	

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Category [name=" + name + "]";
	}
	
	
	
	
}
