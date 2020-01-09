package com.osda.tienda.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.login.forgetpass.ForgetPassController;
import com.osda.tienda.principal.PrincipalModel;

import javafx.scene.layout.AnchorPane;

public class LoginModel {
	private boolean logAcepted;
	
	public String logNow(String user, String pass) throws ClassNotFoundException, SQLException {
		String urlImg = "";
		String result = "";
		ConnectionDB.getConnection();
    	ResultSet userMessage = new CRUD().loginUser(user, pass);
    	
		while (userMessage.next()) {
			result = userMessage.getString(1);
		}
		closeConnection();
		
		if (result.equals("Bienvenido")) {
			urlImg = "/resources/bien.png";
			setLogAcepted(true);
		}else {
			urlImg = "/resources/mal.png";
			setLogAcepted(false);
		}
		
		//return (result.equals("Bienvenido")) ? "/resources/bien.png" : "/resources/mal.png";
		return urlImg;
	}
	
	
	
	public void closeConnection() throws SQLException {
		ConnectionDB.closeConnection();
	}
	
	public void goToForegetPass() {
		new ForgetPassController().showWindow();
	}
	
	public void goToPrincipal(AnchorPane root) {
		root.getScene().getWindow().hide();
		new PrincipalModel().showWindow();
	}

	public boolean isLogAcepted() {
		return logAcepted;
	}

	public void setLogAcepted(boolean logAcepted) {
		this.logAcepted = logAcepted;
	}
	
	

}
