package com.osda.tienda.login;

import java.sql.SQLException;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.notification.Notification;

import javafx.event.ActionEvent;
//import javafx.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;

public class LoginController {
	@FXML
	private AnchorPane anchorPaneLogin;
	@FXML
	private ImageView imgLogin;
	@FXML
	private JFXTextField txtUsuario;
	@FXML
	private JFXPasswordField txtPassword;
	@FXML
	private Label lblForget;
	@FXML
	private JFXButton btnCancel;
	@FXML
	private JFXButton btnStart;

	private LoginModel loginModel = new LoginModel();

	@FXML
	void btnCancelOnAction(ActionEvent event) throws SQLException {
		System.exit(0);
	}

	@FXML
	void btnStartOnAction(ActionEvent event) {
		loginRevisionDatos();
	}

	@FXML
	void lblForgetOnMouseClicked(MouseEvent event) {
		loginModel.goToForegetPass();
		anchorPaneLogin.getScene().getWindow().hide();
	}

	@FXML
	void enterOnKeyPressed(KeyEvent event) {
		if (event.getCode() == KeyCode.ENTER)
			loginRevisionDatos();

	}

	private void loginRevisionDatos() {
		try {
			String usuario = txtUsuario.getText().toString().trim();
			String pass = txtPassword.getText().toString();
			String url = "";
			
			if (usuario.equals("")) {
				txtUsuario.forward();
				Notification.showMessage("Revisa tu informacion");
			} else if (pass.equals("")) {
				txtPassword.isFocused();
				Notification.showMessage("Revisa tu informacion");
			} else /*if (pass != "" && usuario != "") */{
				System.out.println("Pasando a loginModel");
				url = loginModel.logNow(usuario, pass);
				imgLogin.setImage(new Image(url));
				txtPassword.setText("");

				if (loginModel.isLogAcepted())
					loginModel.goToPrincipal(anchorPaneLogin);
			}
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} 
	}
}
