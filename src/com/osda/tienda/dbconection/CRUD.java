package com.osda.tienda.dbconection;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class CRUD extends ConnectionDB{
	
	public ResultSet loginUser(String user, String pass) throws SQLException {
		
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL loginSp(?,?)}");
		call.setString(1, user);
		call.setString(2, pass);
		call.execute();			
		
		return call.getResultSet();
	}

}
