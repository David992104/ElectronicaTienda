package com.osda.tienda.principal.addProveedor;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

public class addProveeedorController implements Initializable{

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
	private TableView<Proveedor> tblProveedor;

	@FXML
	private TableColumn<Proveedor, String> columnRsocial;

	@FXML
	private TableColumn<Proveedor, String> columnRfc;

	@FXML
	private TableColumn<Proveedor, String> columnCorreo;

	@FXML
	private TableColumn<Proveedor, String> columnDireccion;

	@FXML
	private TableColumn<Proveedor, String> columnTelefono;
	
	private ObservableList<Proveedor> lista = FXCollections.observableArrayList();

	@FXML
	void OnActionbtnAniadir(ActionEvent event) {
		
			if (new addProveedorModel().addProvedor(txtRazonS.getText().toString().trim(),
					txtRfc.getText().toString().trim(), txtCorreo.getText().toString().trim(),
					txtDireccion.getText().toString().trim(), txtTelefono.getText().toString().trim())) {
				txtRazonS.setText("");
				txtRfc.setText("");
				txtCorreo.setText("");
				txtDireccion.setText("");
				txtTelefono.setText("");
				
			}
			llenar();
		
	}

	public void llenar() {
		lista = new addProveedorModel().llenarTabla();
		
		columnRsocial.setCellValueFactory(new PropertyValueFactory<>("razon"));
		columnRfc.setCellValueFactory(new PropertyValueFactory<>("rfc"));
		columnCorreo.setCellValueFactory(new PropertyValueFactory<>("email"));
		columnDireccion.setCellValueFactory(new PropertyValueFactory<>("direccion"));
		columnTelefono.setCellValueFactory(new PropertyValueFactory<>("telefono"));
		
		tblProveedor.setItems(lista);
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		llenar();
	}
}
