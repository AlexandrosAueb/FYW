package fyw;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrdersDAO {


	/**
	 * This method returns a List with all Orders
	 * 
	 * @return List<Orders>
	 */
	public List<Orders> getOrders() throws Exception {

		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM orders";
		List<Orders> orders = new ArrayList<Orders>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				orders.add(new Orders(rs.getInt("Orders_ID"),
						rs.getString("Date"),
                        rs.getString("Customer_Name"),
                        rs.getString("Address"),
                        rs.getString("Products"),
                        rs.getDouble("Price"),
                        rs.getInt("Estimated_time"),
                        rs.getInt("Delivered_time"),
                        rs.getString("Status"),
                        rs.getInt("Order Source"),
                        rs.getInt("employees_ID")
                        ));
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

		return orders;

	} // End of getOrders


	public Orders findOrders(int id) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM orders";
		Orders order = null;

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				if (id == rs.getInt("Orders_ID")) {
					order = new Orders(rs.getInt("Orders_ID"),
					rs.getString("Date"),
					rs.getString("Customer_Name"),
					rs.getString("Address"),
					rs.getString("Products"),
					rs.getDouble("Price"),
					rs.getInt("Estimated_time"),
					rs.getInt("Delivered_time"),
					rs.getString("Status"),
					rs.getInt("Order Source"),
					rs.getInt("employees_ID")
					);
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

		return order;

	} // End of findOrder



	public List<Orders> findOrdersByStatus(String status) throws Exception {
		
		Connection con = null;
		DB db = new DB();
		String sql = "SELECT * FROM orders WHERE status = ?";
		List<Orders> orders = new ArrayList<Orders>();


		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement prepareStatement = db.getConnection().prepareStatement(sql);
            prepareStatement.setString(1, status);

			// execute the SQL statement (QUERY - SELECT) and get the results in a
			// ResultSet)
			ResultSet rs = prepareStatement.executeQuery();

			while (rs.next()) {
				orders.add(new Orders(rs.getInt("Orders_ID"),
						rs.getString("Date"),
                        rs.getString("Customer_Name"),
                        rs.getString("Address"),
                        rs.getString("Products"),
                        rs.getDouble("Price"),
                        rs.getInt("Estimated_time"),
                        rs.getInt("Delivered_time"),
                        rs.getString("Status"),
                        rs.getInt("Order Source"),
                        rs.getInt("employees_ID")
                        ));
			}
					

			rs.close(); // closing ResultSet
			prepareStatement.close(); // closing PreparedStatement
			db.close(); // closing connection

		} catch (Exception e) {
			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {

			}

		}

		return orders;

	} // End of findOrderByStatus

} 

	
