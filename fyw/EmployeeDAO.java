package fyw;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * EmployeeDAO provides all the necessary methods related to employees.
 * 
 * @author
 *
 */
public class EmployeeDAO {

	/**
	 * This method returns a List with all Employees
	 * 
	 * @return List<Employee>
	 */
	public List<Employee> getEmployees() throws Exception {

		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM employees";
		List<Employee> employees = new ArrayList<Employee>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				employees.add(new Employee(rs.getInt("employees_id"),
						rs.getString("Firstname"),
						rs.getString("Lastname"),
						rs.getString("Email"),
						rs.getString("Role"),
						rs.getString("Username"),
						rs.getString("Password")));
			}

			rs.close(); // closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

		} catch (Exception e) {
			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {

			}

		}

		return employees;

	} // End of getEmployees

	/**
	 * Search employee by username
	 * 
	 * @param username, String
	 * @return Employee, the Employee object or null
	 * @throws Exception
	 */
	public Employee findEmployee(String username) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM employees";
		Employee employee = null;

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				if (username.equals(rs.getString("Username"))) {
					employee = new Employee(rs.getInt("employees_id"),
							rs.getString("Firstname"),
							rs.getString("Lastname"),
							rs.getString("Email"),
							rs.getString("Role"),
							rs.getString("Username"),
							rs.getString("Password"));
					break;
				}
			}

			rs.close(); // closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

		} catch (Exception e) {
			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {

			}

		}

		return employee;

	} // End of findEmployee

	/**
	 * This method is used to authenticate a user.
	 * 
	 * @param username, String
	 * @param password, String
	 * @return Employee, the Employee object
	 * @throws Exception, if the credentials are not valid
	 */
	public Employee authenticate(String username, String password) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM employees";
		Employee employee = null;

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				if (username.equals(rs.getString("Username")) && password.equals(rs.getString("Password"))) {
					employee = new Employee(rs.getInt("employees_id"),
							rs.getString("Firstname"),
							rs.getString("Lastname"),
							rs.getString("Email"),
							rs.getString("Role"),
							rs.getString("Username"),
							rs.getString("Password"));
					break;
				}
			}

			if (employee == null) {
				throw new Exception("Wrong username or password");
			}

			rs.close(); // closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

		} catch (Exception e) {
			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {

			}

		}

		return employee;

	} // End of authenticate

	/**
	 * Register/create new User.
	 * 
	 * @param employee, Employee
	 * @throws Exception, if encounter any error.
	 */
	public void register(Employee employee) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM employees";
		String username = employee.getUsername();
		String email = employee.getEmail();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				if (username.equals(rs.getString("Username")) || email.equals(rs.getString("Email"))) {
					throw new Exception("Sorry, username or email already registered");
				}
			}

			sql = "INSERT INTO employees (employees_ID, Firstname, Lastname, Email, Role, Username, Password) "
					+ " VALUES (?, ?, ?, ?, ?, ?, ?);";

			stmt = con.prepareStatement(sql);

			// set values to all parameters
			stmt.setInt(1, employee.getId());
			stmt.setString(2, employee.getFirstname());
			stmt.setString(3, employee.getLastname());
			stmt.setString(4, employee.getEmail());
			stmt.setString(5, employee.getRole());
			stmt.setString(6, employee.getUsername());
			stmt.setString(7, employee.getPassword());

			// execute the SQL statement (INSERT)
			stmt.executeUpdate();

			rs.close(); // closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

		} catch (Exception e) {
			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {

			}

		}

	}// end of register



	public double average_time(Employee emp) throws Exception {
        double avg = 0;
        DB db = new DB();
        String sql = "select avg(Estimated_time) from Orders, Employees where employees.employees_ID = Orders.employees_ID and Orders.employees_ID = ?;";

        try {
            PreparedStatement prepareStatement = db.getConnection().prepareStatement(sql);
            prepareStatement.setDouble(1, emp.getId());
            ResultSet rs = prepareStatement.executeQuery();

            while (rs.next()) {
                avg = (rs.getDouble(1));


            }

            rs.close();
            prepareStatement.close();
            db.close();
        }
        catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
        finally {
            try {
                db.close();
            }
            catch (Exception ex2) {}
        }
        return avg ;
    }


    public double count(Employee emp) throws Exception {
        int c = 0;
        final DB db = new DB();
        final String sql = "select count(Estimated_time) from Orders, Employees where employees.employees_ID = Orders.employees_ID and Orders.employees_ID = ?;";

        try {
            PreparedStatement prepareStatement = db.getConnection().prepareStatement(sql);
            prepareStatement.setInt(1, emp.getId());
            ResultSet executeQuery = prepareStatement.executeQuery();

            while (executeQuery.next()) {
              c = executeQuery.getInt(1);

            }

            executeQuery.close();
            prepareStatement.close();
            db.close();
        }
        catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
        finally {
            try {
                db.close();
            }
            catch (Exception ex2) {}
        }
        return c ;
    }

} // End of class