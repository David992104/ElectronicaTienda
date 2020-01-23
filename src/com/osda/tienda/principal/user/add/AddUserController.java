package com.osda.tienda.principal.user.add;

import java.sql.SQLException;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.notification.Notification;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.layout.Pane;

public class AddUserController {

	@FXML
	private JFXTextField txtUGerente;

	@FXML
	private JFXPasswordField txtCGerente;

	@FXML
	private JFXButton btnValidar;

	@FXML
	private Pane panelUsuario;

	@FXML
	private JFXTextField txtNombre;

	@FXML
	private JFXTextField txtApe1;

	@FXML
	private JFXTextField txtApe2;

	@FXML
	private JFXTextField txtUsuario;

	@FXML
	private JFXPasswordField txtPassword;

	@FXML
	private JFXPasswordField txtConfPassword;

	@FXML
	private JFXComboBox<?> cboxCargo;

	@FXML
	private JFXButton btnVaciar;

	@FXML
	private JFXButton btnAgregar;

	@FXML
	void btmAgregarOnAction(ActionEvent event) {
		if (txtUsuario.getText().toString().trim().equals(null)) {
			Notification.checkData();
		} else if (txtPassword.getText().toString().trim().equals(null)
				|| txtConfPassword.getText().toString().trim().equals(null)) {
			Notification.checkData("Password");
		} else {
			if (new AddUserModel().addUser(txtNombre.getText().toString().trim(), txtApe1.getText().toString().trim(),
					txtApe2.getText().toString().trim(), txtUsuario.getText().toString().trim(),
					txtPassword.getText().toString().trim(), txtConfPassword.getText().toString().trim())) {
				vaciar();
			}
			{
			}
		}

	}

	public void vaciar() {
		txtNombre.setText(null);
		txtApe1.setText(null);
		txtApe2.setText(null);
		txtUsuario.setText(null);
		txtPassword.setText(null);
		txtConfPassword.setText(null);
		txtCGerente.setText(null);
		txtUsuario.setText(null);

		panelUsuario.setDisable(true);

	}

	@FXML
	void btnVacioOnAction(ActionEvent event) {
		vaciar();
	}

	@FXML
	void btnValidaOnAcvtion(ActionEvent event) {
		if (txtUGerente.getText().toString().trim().equals("")) {
			Notification.checkData();
		} else if (txtCGerente.getText().toString().trim().equals("")) {
			Notification.checkData("Password");
		} else {
			try {
				panelUsuario.setDisable(!(new AddUserModel().findAdmin(txtUGerente.getText().toString().trim(),
						txtCGerente.getText().toString().trim())));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
