package com.osda.tienda.login.forgetpass;

import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.login.LoginModel;
import com.osda.tienda.notification.Notification;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class ForgetPassModel {
	
	public boolean changePass(String user, String pass, String passConfirm) {
		boolean resp = false;
		if (pass.equals(passConfirm)) {
			resp = new CRUD().changePass(user, pass);
			new LoginModel().showWindow();
			Notification.showMessage("Contrase�a cambiada exitosamente");
		}else {
			Notification.showMessage("Revisa tu informacion\nContrase�as no coinciden");
		}			
		return resp;
	}
	
	public boolean findAdmin(String userAdmin, String passAdmin) {
		boolean resultado = new CRUD().findAdmin(userAdmin, passAdmin); 
		
		if (resultado)
			return resultado;
		else {
			Notification.sendError("El usuario no existe o \nNo tiene privilegios");
			return false;
		}
	}

	 public void showWindow() {
	    	try {
				FXMLLoader loader = new FXMLLoader(getClass()
						.getResource("/com/osda/tienda/login/forgetpass/ForgetPassView.fxml"));
				AnchorPane root = loader.load();
				Stage stage = new Stage();
				stage.setScene(new Scene(root, 300, 535));
				stage.setTitle("Reset Password");
				stage.centerOnScreen();
				stage.show();
			} catch(Exception e) {
				e.printStackTrace();
			}
	    }
	
}
