package com.osda.tienda.principal;

import java.io.IOException;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class PrincipalModel {
	
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
	}
	
	
	
	
}
