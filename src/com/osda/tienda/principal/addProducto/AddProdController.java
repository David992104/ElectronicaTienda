package com.osda.tienda.principal.addProducto;

import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

import com.osda.tienda.notification.Notification;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

public class AddProdController implements Initializable {

	@FXML
	private TextField txtCodigoB;

	@FXML
	private TextField txtDescripccion;

	@FXML
	private TextField txtPrecio;

	@FXML
	private TextField txtExistencias;

	@FXML
	private Button btnAniadir;

	@FXML
	private TableView<Producto> tableProd;
	@FXML
	private TableColumn<Producto, String> tabCodigo;

	@FXML
	private TableColumn<Producto, String> tabDescripcion;

	@FXML
	private TableColumn<Producto, Double> tabPrecio;

	@FXML
	private TableColumn<Producto, Number> tabExistencias;

	@FXML
	private Button btnVolver;

	private ObservableList<Producto> lista;

	private AddProdModel addProdModel = new AddProdModel();

	@FXML
	void OnAccionAniadir(ActionEvent event) {
		String codigo = txtCodigoB.getText().toString().trim();
		String descripcion = txtDescripccion.getText().toString().trim();
		double precio = Double.parseDouble(txtPrecio.getText().toString().trim());
		int existencias = Integer.parseInt(txtExistencias.getText().toString().trim());

		if (existencias < 0) {
			Notification.sendError("Revise sus existencias");
			txtExistencias.requestFocus();
		} else if (precio <= 0.0) {
			Notification.sendError("Revise sus precio");
			txtPrecio.requestFocus();
		} else if (descripcion.equals("")) {
			txtDescripccion.requestFocus();
		} else if (codigo.equals("")) {
			txtCodigoB.requestFocus();
		} else {
			try {
				if (new AddProdModel().addProduct(codigo, descripcion, precio, existencias)) {
					txtCodigoB.setText("");
					txtDescripccion.setText("");
					txtPrecio.setText("");
					txtExistencias.setText("");
				}
				
				mostrar();
				
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@FXML
	void OnAccionbtnVolver(ActionEvent event) {

	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		mostrar();
	}
	
	private void mostrar() {
		try {			
			lista = addProdModel.llenarTabla();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		tableProd.setItems(lista);

		tabCodigo.setCellValueFactory(new PropertyValueFactory<Producto, String>("codigo"));
		tabDescripcion.setCellValueFactory(new PropertyValueFactory<Producto, String>("descripcion"));
		tabPrecio.setCellValueFactory(new PropertyValueFactory<Producto, Double>("precio"));
		tabExistencias.setCellValueFactory(new PropertyValueFactory<Producto, Number>("existencias"));
	}

}
