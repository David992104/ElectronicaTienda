package com.osda.tienda.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.login.forgetpass.ForgetPassController;

public class LoginModel {
	
	public boolean logNow(String user, String pass) throws ClassNotFoundException, SQLException {
		String result = "";
		ConnectionDB.getConnection();
    	ResultSet userMessage = new CRUD().loginUser(user, pass);
    	
		while (userMessage.next()) {
			result = userMessage.getString(1);
		}
		
		
		
		return true;
	}
	
	public void closeConnection() throws SQLException {
		ConnectionDB.closeConnection();
	}
	
	public void goToForegetPass() {
		new ForgetPassController().showWindow();
	}

}
