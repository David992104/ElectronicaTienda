package com.osda.tienda.dbconection;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class UserCRUD extends ConnectionDB {

	public UserCRUD() {
		try {
			ConnectionDB.getConnection();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean addUser(String nombre, String ape1, String ape2, String user, String pass) {
		String resp = "";
		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL addUserSp(?,?,?,?,?)}");
			call.setString(1, nombre);
			call.setString(2, ape1);
			call.setString(3, ape2);
			call.setString(4, user);
			call.setString(5, pass);
			//call.setInt(6, 3);
			call.execute();

			while (call.getResultSet().next()) {
				resp = call.getResultSet().getString(1);
			}

			ConnectionDB.closeConnection();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (resp.equals("1"))
			return true;
		else
			return false;

	}

	public boolean findAdmin(String userAdmin, String passAdmin) throws SQLException {
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL findAdminSp(?, ?)}");
		call.setString(1, userAdmin);
		call.setString(2, passAdmin);
		call.execute();

		String resp = "";
		while (call.getResultSet().next()) {
			resp = call.getResultSet().getString(1);
		}

		ConnectionDB.closeConnection();

		if (resp.equals("1"))
			return true;
		else
			return false;

	}

}
