package com.osda.tienda.login;

import java.sql.SQLException;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
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
	void btnStartOnAction(ActionEvent event) throws ClassNotFoundException, SQLException {
		if (txtUsuario.getText().toString() == "")
			txtUsuario.forward();
		
		else if (txtPassword.getText().toString().equals(""))
			txtPassword.isFocused();
		
		else if (txtPassword.getText().toString() != "" && txtUsuario.getText().toString() != "") {
			String url = loginModel.logNow(txtUsuario.getText().toString().trim(),
					txtPassword.getText().toString().trim());
			imgLogin.setImage(new Image(url));
			
			if (loginModel.isLogAcepted())
				loginModel.goToPrincipal(anchorPaneLogin);
		}
	}

	@FXML
	void lblForgetOnMouseClicked(MouseEvent event) {
		loginModel.goToForegetPass();
	}

}
