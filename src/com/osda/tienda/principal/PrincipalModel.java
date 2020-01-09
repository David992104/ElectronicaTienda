package com.osda.tienda.principal;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class PrincipalModel {

	
	
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
