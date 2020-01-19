package com.osda.tienda.notification;

import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class Notification {

	public static void sendError(String mensaje) {
		Alert message = new Alert(AlertType.ERROR);
		message.setTitle("Error");
		message.setContentText(mensaje);
		message.show();
	}
	
	public static void checkData() {
		Alert message = new Alert(AlertType.WARNING);
		message.setTitle("Revisa tu informacion");
		message.setContentText("Revisa tu infromacion de inicio");
		message.show();
	}
	
	public static void checkData(String what) {
		Alert message = new Alert(AlertType.WARNING);
		message.setTitle("Revisa tu informacion");
		message.setContentText("Revisa tu infromacion de " + what);
		message.show();
	}
	
	public static void showMessage(String message) {
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setTitle("Informacion");
		alert.setContentText(message);
		alert.show();
	}
}
