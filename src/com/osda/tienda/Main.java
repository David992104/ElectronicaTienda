package com.osda.tienda;
	
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;

import javafx.fxml.FXMLLoader;


public class Main extends Application {
	@Override
	public void start(Stage primaryStage) {
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
	
	public static void main(String[] args) {
		launch(args);
	}
}
