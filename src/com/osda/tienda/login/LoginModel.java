package com.osda.tienda.login;

import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.login.forgetpass.ForgetPassModel;
import com.osda.tienda.principal.PrincipalModel;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class LoginModel {
	private boolean logAcepted;

	public static String nombre;
	

	public String logNow(String user, String pass) throws ClassNotFoundException {
		String urlImg = "";
		String result = new CRUD().loginUser(user, pass);
		
		if (result.equals("1")) {
			urlImg = "/resources/bien.png";
			setLogAcepted(true);
			LoginModel.nombre = user; //MAndamos el user a la principal
		}else {
			urlImg = "/resources/mal.png";
			setLogAcepted(false);
		}
		return urlImg;
	}
	
	public void goToForegetPass() {
		new ForgetPassModel().showWindow();
	}
	
	public void goToPrincipal(AnchorPane root) {
		new PrincipalModel().showWindow();
		root.getScene().getWindow().hide();
		
	}
	
	 public void showWindow() {
	    	try {
				FXMLLoader loader = new FXMLLoader(getClass()
						.getResource("/com/osda/tienda/login/LoginView.fxml"));
				AnchorPane root = loader.load();
				Stage stage = new Stage();
				stage.setScene(new Scene(root, 200, 275));
				stage.setTitle("Login");
				stage.centerOnScreen();
				stage.show();
			} catch(Exception e) {
				e.printStackTrace();
			}
	    }

	public boolean isLogAcepted() {
		return logAcepted;
	}

	public void setLogAcepted(boolean logAcepted) {
		this.logAcepted = logAcepted;
	}
	
}
