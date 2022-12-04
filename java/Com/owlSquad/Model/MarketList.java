package Com.owlSquad.Model;

public class MarketList {
	protected int id ;
	protected String name ;
	protected String image ;
	protected String title ;
	protected String description ;
	protected String address;
	
	public MarketList() {
	
	}
	
	
	public MarketList(String name, String image, String title,String description, String address) {
		super();
		this.name = name;
		this.image = image;
		this.title = title;
		this.description = description;
		this.address = address;
	}
	
	public MarketList (int id , String name, String image, String title, String description, String address) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.title = title;
		this.description = description;
		this.address = address;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
