package com.pawsco.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.pawsco.business.User;

public class UserDB {
	
	public static void insert(User user) throws SQLException {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String query =
				"Insert INTO users (Email, Password, FirstName, LastName)"
				+ "VALUES(?, ?, ?, ?)";
		
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, user.getEmail());
			ps.setString(2,  user.getPassword());
			ps.setString(3, user.getFirstName());
			ps.setString(4, user.getLastName());
			
			ps.executeUpdate();
			
			//get the user ID from the last insert statement
			String identityQuery = "SELECT @@IDENTITY AS IDENTITY";
			Statement identityStatement = connection.createStatement();
			ResultSet identityResultSet = identityStatement.executeQuery(identityQuery);
			identityResultSet.next();
			long userID = identityResultSet.getLong("IDENTITY");
			identityResultSet.close();
			identityStatement.close();
			
			// Set the user ID in the user object
			user.setId(userID);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
				System.err.println(e);
		}finally {
			 	DBUtil.closeResultSet(rs);
	         	DBUtil.closePreparedStatement(ps);
	            pool.freeConnection(connection);
		}
		
	}
	
	public static void update(User user) throws SQLException {
		
		 	ConnectionPool pool = ConnectionPool.getInstance();
		 	Connection connection = pool.getConnection();
		 	PreparedStatement ps = null;
		 	ResultSet rs = null;
		 	
		 	String query = "UPDATE users SET"
		 			+ "email = ?,"
		 			+ "password = ?, "
		 			+ "FirstName = ?, "
		 			+ "LastName = ? "
		 			+ "WHERE email = ?";
		 	
		 	try {
				ps = connection.prepareStatement(query);
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getPassword());
				ps.setString(3, user.getFirstName());
				ps.setString(4, user.getLastName());
				
				ps.executeUpdate();
			} catch (SQLException e) {
				System.err.println(e);
			}finally {
				DBUtil.closeResultSet(rs);
	            DBUtil.closePreparedStatement(ps);
	            pool.freeConnection(connection);
			}
	}
	
	public static User selectUser(String email) throws SQLException {
		ConnectionPool pool = ConnectionPool.getInstance();
	 	Connection connection = pool.getConnection();
	 	PreparedStatement ps = null;
	 	ResultSet rs = null;
	 	
	 	String query = "SELECT * FROM users "
	 			+ "WHERE email = ?";
	 	
	 	try {
			ps = connection.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			User user = null;
			if(rs.next()) {
				user = new User();
				user.setId(rs.getLong("UserID"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setFirstName(rs.getString("FirstName"));
				user.setLastName(rs.getString("LastName"));
			}
			return user;
			
		} catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
	}
	
	public static boolean emailExists(String email) throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT email FROM users "
                + "WHERE email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }    

}
