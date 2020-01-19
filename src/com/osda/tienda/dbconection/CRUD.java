package com.osda.tienda.dbconection;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class CRUD extends ConnectionDB {
	public CRUD() {
		try {
			ConnectionDB.getConnection();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ResultSet loginUser(String user, String pass) throws SQLException {
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL loginSp(?,?)}");
		call.setString(1, user);
		call.setString(2, pass);
		call.execute();

		return call.getResultSet();
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

	public boolean changePass(String user, String newPass) {
		String resp = "";
		try {
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
