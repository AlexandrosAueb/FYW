package fyw;

public class Employee {
    
    private int id;
    private String firstname;
    private String lastname;
	private String email;
    private String role;
	private String username;
	private String password;

    /**
     * Full constuctor
     * 
     * @param id
     * @param firstname
     * @param lastname
     * @param email
     * @param role
     * @param username
     * @param password
     */
    public Employee(int id, String firstname, String lastname, String email, String role, String username, String password) {        
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.role = role;
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

   