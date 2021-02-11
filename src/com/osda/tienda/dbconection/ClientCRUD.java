package com.osda.tienda.dbconection;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class ClientCRUD extends ConnectionDB {

	public boolean createClient(String[] data) {
		ConnectionDB.getConnection("Desde ClienteCrud");
		String result = "";
		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL createClient(?,?,?,?,?)}");
			for (int i = 0; i < 5; i++)
				call.setString(i + 1, data[i]);

			call.execute();

			while (call.getResultSet().next())
				result = call.getResultSet().getString(1);

			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (result.equals("1"))
			return true;
		else
			return false;
	}

	public ResultSet buscarCliente(int codigo) {
		ConnectionDB.getConnection("Desde ClienteCrud");
		ResultSet result = null;
		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL searchClient(?)}");
			call.setInt(1, codigo);
			call.execute();

			result = call.getResultSet();

			
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return result;
	}

}
