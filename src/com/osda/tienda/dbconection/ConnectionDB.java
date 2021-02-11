package com.osda.tienda.dbconection;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ConnectionDB {

	public Statement statement;
	public static Connection connection = null;

	public void commit() {
		try {
			connection.setAutoCommit(false);
			connection.commit();
			// closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void rollback() {
		try {
			connection.rollback();
			connection.setAutoCommit(true);
			// closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection(String mensaje) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

//			try {
//				connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/tiendita", "root",
//						"alohomora");
//			} catch (SQLException sql) {

				try {
					connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/electronica",
							"root", "");
					System.out.println("Conexion Mysql" + mensaje);
				} catch (SQLException sqlll) {

				}
//			}
		} catch (ClassNotFoundException e) {
		}

		return connection;

	}

	public static void closeConnection() throws SQLException {
		if (connection != null) {
			connection.close();
			System.out.println("Conexion cerrada");
			connection = null;
		}
	}

}
