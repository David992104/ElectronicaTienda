package com.osda.tienda.principal.addProveedor;

import java.sql.SQLException;

import com.osda.tienda.principal.addProducto.AddProdModel;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;

public class addProveeedorController {

	@FXML
	private TextField txtRazonS;

	@FXML
	private TextField txtRfc;

	@FXML
	private TextField txtCorreo;

	@FXML
	private TextField txtDireccion;

	@FXML
	private TextField txtTelefono;

	@FXML
	private Button btnAniadir;

	@FXML
	private TableView<?> tblProveedor;

	@FXML
	private TableColumn<?, ?> columnRsocial;

	@FXML
	private TableColumn<?, ?> columnRfc;

	@FXML
	private TableColumn<?, ?> columnCorreo;

	@FXML
	private TableColumn<?, ?> columnDireccion;

	@FXML
	private TableColumn<?, ?> columnTelefono;

	@FXML
	void OnActionbtnAniadir(ActionEvent event) {
		try {
			if (new addProveedorModel().addProvedor(txtRazonS.getText().toString().trim(),
					txtRfc.getText().toString().trim(), txtCorreo.getText().toString().trim(),
					txtDireccion.getText().toString().trim(), txtTelefono.getText().toString().trim())) {
				txtRazonS.setText("");
				txtRfc.setText("");
				txtCorreo.setText("");
				txtDireccion.setText("");
				txtTelefono.setText("");
				
			}

		} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
