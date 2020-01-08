package com.osda.tienda;
	
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.fxml.FXMLLoader;


public class Main extends Application {
	@Override
	public void start(Stage primaryStage) {
		try {
			goToLogin();
			FXMLLoader loader = new FXMLLoader(getClass()
					.getResource("/com/osda/tienda/splash/SplashView.fxml"));
			BorderPane root = loader.load();
			Stage stage = new Stage();
			stage.setScene(new Scene(root, 500, 500));
			stage.setTitle("Splash");
			stage.centerOnScreen();
			stage.show();	
			stage.isFocused();			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void goToLogin() {
		try {			
			FXMLLoader loaders = new FXMLLoader(getClass().getResource("/com/osda/tienda/login/LoginView.fxml"));
			AnchorPane roots = loaders.load();
			Stage stages = new Stage();
			stages.setScene(new Scene(roots, 200, 275));
			stages.setTitle("Login");
			stages.centerOnScreen();
			stages.show();
			//hilo.stop();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
