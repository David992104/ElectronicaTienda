package com.osda.tienda.dbconection;

import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

public class ClientCRUD extends ConnectionDB{
	public ClientCRUD(){
		try {
			ConnectionDB.getConnection();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public boolean createClient(String [] data) {
		String result = "";
		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL createClient(?,?,?,?,?)}");
			for (int i = 0; i < 5; i ++) 
				call.setString(i+1, data[i]);
			
			call.execute();
			
			while(call.getResultSet().next()) 
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

}
