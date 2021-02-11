package com.osda.tienda.splash;

import java.net.URL;
import java.util.ResourceBundle;

import com.jfoenix.controls.JFXProgressBar;
import com.osda.tienda.login.LoginModel;

import javafx.animation.FadeTransition;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.util.Duration;

public class SplashController implements Initializable {
	@FXML
	private ImageView imgSpalsh;
	@FXML
	private Label lblText;
	@FXML
	private JFXProgressBar pbUno;
	@FXML
	private BorderPane bpRoot;

	class SplashThread extends Thread {
		@Override
		public void run() {
			try {
				Thread.sleep(3000);
				Platform.runLater(new Runnable() {
					@Override
					public void run() {
						FadeTransition fadeOut = new FadeTransition(Duration.seconds(3), bpRoot);
						fadeOut.setFromValue(1);
						fadeOut.setToValue(0);
						fadeOut.setCycleCount(1);
						fadeOut.play();

						fadeOut.setOnFinished((e) -> {
//							Parent root = null;
//							try {
//								root = FXMLLoader.load(getClass().getResource("/com/osda/tienda/login/LoginView.fxml"));
//							} catch (IOException ioe) {
//								Logger.getLogger(SplashController.class.getName()).log(Level.SEVERE, null, ioe);
//							}
//							Scene scene = new Scene(root);
//							Stage stage = new Stage();
//							stage.setScene(scene);
//							stage.show();
							new LoginModel().showWindow();

							bpRoot.getScene().getWindow().hide();
						});
					}
				});
			} catch (Exception e) {
				System.out.println("Ya lo descompusiste");
			}
		}
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		new SplashThread().start();
	}

}
