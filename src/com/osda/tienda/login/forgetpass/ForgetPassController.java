package com.osda.tienda.login.forgetpass;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.login.LoginModel;
import com.osda.tienda.notification.Notification;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;

public class ForgetPassController {

	@FXML
	private AnchorPane apRoot;
	@FXML
	private Pane paneAdmin;

	@FXML
	private JFXTextField txtUserAdmin;

	@FXML
	private JFXPasswordField txtPassAdmin;

	@FXML
	private JFXButton btnCheck;

	@FXML
	private Pane paneUser;

	@FXML
	private JFXTextField txtPassNew;

	@FXML
	private JFXTextField txtComfimPass;

	@FXML
	private JFXButton btnConfirm;

	@FXML
	private JFXButton btnCancelar;

	@FXML
	private JFXTextField txtUser;

	ForgetPassModel forgetPassModel = new ForgetPassModel();

	@FXML
	void btnCancelarOnAction(ActionEvent event) {
		apRoot.getScene().getWindow().hide();
		new LoginModel().showWindow();
	}

	@FXML
	void btnCheckOnAction(ActionEvent event) {
		checkDataUserAdmin();
	}

	@FXML
	void btnConfirmOnAction(ActionEvent event) {

		if (txtUser.getText().toString().trim().equals(null)) {
			Notification.checkData();
		} else if (txtPassNew.getText().toString().trim().equals(null)
				|| txtComfimPass.getText().toString().trim().equals(null)) {
			Notification.checkData("Password");
		} else {
			if (forgetPassModel.changePass(txtUser.getText().toString().trim(), txtPassNew.getText().toString().trim(),
					txtComfimPass.getText().toString().trim())) {
				apRoot.getScene().getWindow().hide();
				
			}
		}

	}

	@FXML
	void enterOnKeyPressed(KeyEvent event) {
		if (event.getCode() == KeyCode.ENTER)
			checkDataUserAdmin();
	}

	public void checkDataUserAdmin() {
		String user = txtUserAdmin.getText().toString().trim();
		String pass = txtPassAdmin.getText().toString();

		if (user.equals("")) {
			txtUserAdmin.forward();
			Notification.checkData();
		} else if (pass.equals("")) {
			txtPassAdmin.forward();
			Notification.checkData("Password");
		} else {
			paneUser.setDisable(!(forgetPassModel.findAdmin(user, pass)));
		}
	}

}
