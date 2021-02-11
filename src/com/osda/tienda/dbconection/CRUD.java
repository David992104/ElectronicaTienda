package com.osda.tienda.dbconection;

import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class CRUD extends ConnectionDB {

	public String loginUser(String user, String pass) {
		getConnection("Desde Crud de loginUser");
		String result = "";

		try {

			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL loginSp(?,?)}");
			call.setString(1, user);
			call.setString(2, pass);
			call.execute();

			while (call.getResultSet().next())
				result = call.getResultSet().getString(1);

			closeConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}

		return result;
	}

	public boolean findAdmin(String userAdmin, String passAdmin) {
		getConnection("Desde Crud de losgin userAdmin");
		String resp = "";
		try {
			CallableStatement consult = (CallableStatement) connection.prepareCall("{CALL findAdminSp(?, ?)}");
			consult.setString(1, userAdmin);
			consult.setString(2, passAdmin);
			consult.execute();

			while (consult.getResultSet().next()) 
				resp = consult.getResultSet().getString(1);

			closeConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		if (resp.equals("1"))
			return true;
		else
			return false;
	}

	public boolean changePass(String user, String newPass) {
		String resp = "";
		try {
			getConnection("Desde Crud de ChangePass");
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL ressetPassSp(?, ?)}");
			call.setString(1, user);
			call.setString(2, newPass);
			call.execute();

			while (call.getResultSet().next())
				resp = call.getResultSet().getString(1);

			ConnectionDB.closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (resp.equals("1"))
			return true;
		else
			return false;
	}
}
