package com.osda.tienda.dbconection;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ConnectionDB {

	public Statement statement;
	public static Connection connection;

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		if (connection == null) {
			
			Class.forName("com.mysql.jdbc.Driver");
			try {
				connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/tiendita", "root",
						"alohomora");
			} catch (SQLException sql) {
				try {
					connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/tiendaosda", "root",
							"");
					System.out.println("Conexion OSDA");
				} catch (SQLException sqll) {
					throw new SQLException(sqll);
				}
			}
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
