package com.osda.tienda.dbconection;

import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class CRUD extends ConnectionDB{
	
	public void loginUser(String user, String pass) throws SQLException {
		
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL iniciarSesion(?,?)}");
		call.setString(1, user);
		call.setString(2, pass);
		call.execute();
		
		//System.out.println(call.getString(null));
		
		//return "Bienvenido";
	}

}
