package Com.owlSquad.Model;

public class User {
	protected int id ;
	protected String name ;
	protected String email;
	protected String password;
	protected int role_as;
	
	
	
	public User() {
		
	}
	
	public User(String name, String email, String password,int role_as) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.role_as = role_as;
		
	}
	
	
	public User(int id, String name, String email, String password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
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
	public int getRole_as() {
		return role_as;
	}

	public void setRole_as(int role_as) {
		this.role_as = role_as;
	}
	
}
	
