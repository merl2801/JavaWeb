package Com.owlSquad.Model;

public class Store {
	protected int id ;
	protected String name;
	protected String address;
	protected int phone;
	protected String business_hours;
	protected String  products_handled;
	protected String image;
	protected String email;
	
	public Store() {
		
	}
	
	public Store(String email,String name, String address, int phone, String business_hour, String products_handled, String image) {
		super();
		this.email = email;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.business_hours = business_hour;
		this.products_handled = products_handled;
		this.image = image;
	}
	
	public Store(String name, String address, int phone, String business_hour, String products_handled, String image) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.business_hours = business_hour;
		this.products_handled = products_handled;
		this.image = image;
	}
	
	public Store(int id, String name, String address, int phone, String business_hour, String products_handled, String image ) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.business_hours = business_hour;
		this.products_handled = products_handled;
		this.image = image;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getBusiness_hours() {
		return business_hours;
	}

	public void setBusiness_hours(String business_hours) {
		this.business_hours = business_hours;
	}

	public String getProducts_handled() {
		return products_handled;
	}

	public void setProducts_handled(String products_handled) {
		this.products_handled = products_handled;
	}
	
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
}
