package com.osda.tienda.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.login.forgetpass.ForgetPassModel;
import com.osda.tienda.principal.PrincipalModel;

import javafx.scene.layout.AnchorPane;

public class LoginModel {
	private boolean logAcepted;
<<<<<<< HEAD
	private String nombre;
=======
	public static String nombre;
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
	
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
<<<<<<< HEAD
			setNombre(user);
=======
			LoginModel.nombre = user; //MAndamos el user a la principal
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
		}else {
			urlImg = "/resources/mal.png";
			setLogAcepted(false);
		}
		return urlImg;
	}
	
	
	
	public void closeConnection() throws SQLException {
		ConnectionDB.closeConnection();
	}
	
	public void goToForegetPass() {
		new ForgetPassModel().showWindow();
	}
	
	public void goToPrincipal(AnchorPane root) {
		new PrincipalModel().showWindow();
		root.getScene().getWindow().hide();
		
	}

	public boolean isLogAcepted() {
		return logAcepted;
	}

	public void setLogAcepted(boolean logAcepted) {
		this.logAcepted = logAcepted;
	}
	
<<<<<<< HEAD
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

=======
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
}
