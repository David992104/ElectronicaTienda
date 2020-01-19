package com.osda.tienda.login.forgetpass;

import java.sql.SQLException;

import com.osda.tienda.dbconection.CRUD;
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
			Notification.showMessage("Contraseña cambiada exitosamente");
		}else {
			Notification.showMessage("Revisa tu informacion\nContraseñas no coinciden");
		}			
		return resp;
	}
	
	public boolean findAdmin(String userAdmin, String passAdmin) throws SQLException {
		
		if ((new CRUD().findAdmin(userAdmin, passAdmin)))
			return new CRUD().findAdmin(userAdmin, passAdmin);
		else {
			Notification.sendError("El usuario no existe");
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
