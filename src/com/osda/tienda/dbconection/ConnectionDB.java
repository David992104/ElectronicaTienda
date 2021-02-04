package com.osda.tienda.dbconection;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ConnectionDB {

	public Statement statement;
	public static Connection connection;

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

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		if (connection == null) {

			try {
				Class.forName("com.mysql.jdbc.Driver");

				try {
					connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/tiendita", "root",
							"alohomora");
				} catch (SQLException sql) {

					try {
						connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/electronica",
								"root", "");
						System.out.println("Conexion Mysql");
					} catch (SQLException sqlll) {

					}
				}

			} catch (Exception e) {
				System.err.println("Error al conectar al mysql conectanto a maria db");
				System.out.println("Trantando conectar a MariaDB");
				try {
					Class.forName("org.mariadb.jdbc.Driver");
					connection = (Connection) DriverManager.getConnection("jdbc:mariadb://localhost:3307/electronica",
							"root", "");
					System.out.println("Conectado MariaDb");
				} catch (Exception ex) {
					System.out.println("Imposible conectarse a la base de datos");
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
