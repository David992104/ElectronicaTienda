package com.osda.tienda.dbconection;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProvedorCRUD extends ConnectionDB {
	public ProvedorCRUD() {
		try {
			getConnection();
		} catch (ClassNotFoundException | SQLException e) {			
			e.printStackTrace();
		}
	}
	
	
	public ResultSet addProvedor(String rsocial, String rfc, String correo, String direccion, String telefono) throws SQLException {
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL addProvedorSp(?,?,?,?,?)}");
		call.setString(1, rsocial);
		call.setString(2, rfc);
		call.setString(3, correo);
		call.setString(4, direccion);
		call.setString(5, telefono);
		call.execute();
		return call.getResultSet();
	}
}
