package com.osda.tienda.principal;

import java.io.IOException;
<<<<<<< HEAD

import com.osda.tienda.login.LoginModel;
=======
import java.util.Calendar;
import java.util.GregorianCalendar;
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class PrincipalModel {
	
<<<<<<< HEAD
	private String nombre;
	
=======
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
	public void closeSesion(BorderPane principal) throws IOException {
	
		principal.getScene().getWindow().hide();
		
		Parent log = FXMLLoader.load(getClass().getResource("/com/osda/tienda/login/LoginView.fxml"));
		Scene scenes = new Scene(log);
		Stage stages = new Stage();
		stages.setScene(scenes);
		stages.setTitle("Principal");
		stages.centerOnScreen();
		stages.show();			
	}
	
	public void showWindow() {
		try {
			setNombre(new LoginModel().getNombre());//obtener nombre
			Parent root = FXMLLoader.load(getClass().getResource("/com/osda/tienda/principal/PrincipalView.fxml"));
			Scene scene = new Scene(root);
			Stage stage = new Stage();
			stage.setScene(scene);
			stage.setTitle("Principal");
			stage.centerOnScreen();
			stage.show();			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
<<<<<<< HEAD
	}
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre= nombre;
		System.out.println(nombre);
	}
	

=======
	}
	
	public String getDate() {
		Calendar calendar = new GregorianCalendar();
		return calendar.get(Calendar.DAY_OF_MONTH) + " de " +
				(calendar.get(Calendar.MONTH ) + 1) + " del " + 
				calendar.get(Calendar.YEAR);
	}
	
	public String getTime() {
		Calendar calendario = new GregorianCalendar();
		
		return calendario.get(Calendar.HOUR_OF_DAY) + ":" +
				calendario.get(Calendar.MINUTE)+":"+
				calendario.get(Calendar.SECOND);
	}
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
	
}
