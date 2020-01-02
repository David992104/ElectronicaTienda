package com.osda.tienda.dbconection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class OpenConnection {

	Statement statement;
	Connection connection;
	private String database;

	public void connect() {
		char opc = 0;
		do {
			try {
				String controller = "com.mysql.cj.jdbc.Driver";
				Class.forName(controller).newInstance();
				System.out.println("Controlador cargado");

				connection = (Connection) DriverManager.getConnection(database);

				statement = (Statement) connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
						ResultSet.CONCUR_READ_ONLY);
			} catch (Exception e) {
				opc = (char) JOptionPane.showConfirmDialog(null, "Imposible conectar\nReintentar?");
			}
		} while (opc == '0');
	}

	public void closeConnection() throws SQLException {
		connection.close();
	}

}
