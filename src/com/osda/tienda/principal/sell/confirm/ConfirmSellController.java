package com.osda.tienda.principal.sell.confirm;

import java.net.URL;
import java.util.ResourceBundle;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.notification.Notification;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.VBox;

public class ConfirmSellController implements Initializable {
	@FXML
	private VBox vbRoot;
	@FXML
	private JFXTextField txtNombre;
	@FXML
	private JFXTextField txtApe1;
	@FXML
	private JFXTextField txtApe2;
	@FXML
	private JFXTextField txtDireccion;
	@FXML
	private JFXTextField txtNumArticulos;
	@FXML
	private JFXTextField txtTotal;
	@FXML
	private JFXButton btnCancelar;
	@FXML
	private JFXButton btnAceptar;
	@FXML
	private JFXTextField txtId;

	@FXML
	void txtIdOnKeyTyped(KeyEvent event) {
		if (txtId.getText().toString().trim().equals("")) {
			txtId.setText("0");
		} else {
			int codigo = Integer.parseInt(txtId.getText().toString().trim());
			if (codigo <= 0) {
				Notification.sendError("Ingresa un codigo de cliente valido");
			} else {
				String[] cliente = new ConfirmSellModel().buscarCliente(codigo);
				txtNombre.setText(cliente[0]);
				txtApe1.setText(cliente[1]);
				txtApe2.setText(cliente[2]);
				txtDireccion.setText(cliente[3]);
			}
		}
	}

	@FXML
	void btnAceptarOnAction(ActionEvent event) {
		new ConfirmSellModel().vender();
	}

	@FXML
	void btnCancelarOnAction(ActionEvent event) {
		vbRoot.getScene().getWindow().hide();
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		txtNumArticulos.setText(ConfirmSellModel.productos + "");
		txtTotal.setText(ConfirmSellModel.precio + "");
		txtId.setText("0");
	}

}
