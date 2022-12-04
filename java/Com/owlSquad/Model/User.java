package Com.owlSquad.Model;

public class User {
	protected int id ;
	protected String name ;
	protected String email;
	protected String password;
	protected String post_office;
	protected String prefecture;
	protected String city;
	protected String street;
	protected String room_number ;
	
	
	public User() {
		
	}
	
	public User(String name, String email, String password, String post_office, String prefecture, String city, String street ,String room_number) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.post_office = post_office;
		this.prefecture = prefecture;
		this.city = city;
		this.street = street;
		this.room_number = room_number;
	}
	
	
	public User(int id, String name, String email, String password,String post_office, String prefecture, String city, String room_number) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.post_office = post_office;
		this.prefecture = prefecture;
		this.city = city;
		this.room_number = room_number;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPost_office() {
		return post_office;
	}
	public void setPost_office(String post_office) {
		this.post_office = post_office;
	}
	public String getPrefecture() {
		return prefecture;
	}
	public void setPrefecture(String prefectture) {
		this.prefecture = prefectture;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getRoom_number() {
		return room_number;
	}
	public void setRoom_number(String room_number) {
		this.room_number = room_number;
	}
	
}
	
