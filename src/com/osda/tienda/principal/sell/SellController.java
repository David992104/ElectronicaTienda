package com.osda.tienda.principal.sell;

import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.login.LoginModel;
import com.osda.tienda.notification.Notification;
import com.osda.tienda.principal.sell.confirm.ConfirmSellModel;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;

public class SellController implements Initializable {
	@FXML
	private AnchorPane apVenta;
	@FXML
	private Label lblDate;
	@FXML
	private Label lblTime;
	@FXML
	private JFXTextField txtCodigo;
	@FXML
	private JFXTextField txtProducto;
	@FXML
	private JFXTextField txtDisponibles;
	@FXML
	private JFXTextField txtPrecio;
	@FXML
	private JFXTextField txtCantidad;
	@FXML
	private JFXTextField txtSubtotal;
	@FXML
	private JFXButton btnVaciar;
	@FXML
	private JFXButton btnAnadir;
	@FXML
	private TableView<SellModel> tableSell;
	@FXML
	private TableColumn<SellModel, String> tabCodigo;
	@FXML
	private TableColumn<SellModel, String> tabProducto;
	@FXML
	private TableColumn<SellModel, Double> tabPrecio;
	@FXML
	private TableColumn<SellModel, Number> tabCantidad;
	@FXML
	private TableColumn<SellModel, Double> tabSubtotal;

	@FXML
	private JFXButton txtBuscar;
	@FXML
	private Label lblTotal;
	@FXML
	private JFXButton btnCancelar;
	@FXML
	private JFXButton btnProceder;

	private SellModel sellModel = new SellModel();

	private ObservableList<SellModel> carShop = FXCollections.observableArrayList();

	private boolean bandera;

	private double totalPagar = 0;
	private int productos = 0;

	@FXML
	void apVentaOnMouseMoved(MouseEvent event) {
		lblDate.setText(sellModel.getDate());
		lblTime.setText(sellModel.getTime());
		if (!bandera)
			subtotal();
	}

	@FXML
	void txtBuscarOnAction(ActionEvent event) {
		String codigo = txtCodigo.getText().toString().trim();
		if (codigo.equals("")) {
			Notification.showMessage("Rectifique el campo Codigo");
			txtCodigo.requestFocus();
		} else {
			ResultSet result = new SellModel().buscar(codigo);
			try {
				while (result.next()) {
					if (result.getString(1).equals("0")) {
						Notification.sendError("El producto no existe");
						vaciar();
					} else {
						txtProducto.setText(result.getString(2));
						txtPrecio.setText(result.getDouble(3) + "");
						txtDisponibles.setText(result.getInt(4) + "");
						bandera = false;
					}
				}
				ConnectionDB.closeConnection();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@FXML
	void btnAnadirOnAction(ActionEvent event) {
		if (!bandera && Integer.parseInt(txtCantidad.getText().toString().trim()) > 0) {
			carShop.add(new SellModel(txtCodigo.getText().toString().trim(), txtProducto.getText().toString().trim(),
					Double.parseDouble(txtPrecio.getText().toString().trim()),
					Integer.parseInt(txtCantidad.getText().toString().trim()),
					Double.parseDouble(txtSubtotal.getText().toString().trim())));
			llenarTabla();

			bandera = true;
			totalPagar += Double.parseDouble(txtSubtotal.getText().toString().trim());
			lblTotal.setText(totalPagar + "");
			productos++;			
			vaciar();
		}else {
			Notification.sendError("Cantidad tiene que ser mayor a 0");
		}
	}

	@FXML
	void btnCancelarOnAction(ActionEvent event) {
		vaciar();
		limpiarLista();
	}

	@FXML
	void btnProcederOnAction(ActionEvent event) {
		
		new ConfirmSellModel().pasarValores(totalPagar, productos, carShop, LoginModel.nombre);
		new ConfirmSellModel().showWindow();
		
		//new SellModel().pasarValores(totalPagar, productos, carShop, LoginModel.nombre);
	}

	@FXML
	void btnVaciarOnAction(ActionEvent event) {
		vaciar();
		limpiarLista();
	}

	@FXML
	void txtCodigoOnKeyTyped(KeyEvent event) {

	}

	@FXML
	void txtProductoOnKeyTyped(KeyEvent event) {

	}

	@FXML
	void txtSubtotalOnAction(ActionEvent event) {
		subtotal();
	}

	@FXML
	void txtCantidadOnKreyTyped(KeyEvent event) {
		subtotal();
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		new LoginModel();
		lblDate.setText(new SellModel().getDate());
		lblTime.setText(new SellModel().getTime());
		txtCantidad.setText("0");
		txtPrecio.setText("0");
		subtotal();
	}

	private void llenarTabla() {
		tabCodigo.setCellValueFactory(new PropertyValueFactory<>("codigo"));
		tabProducto.setCellValueFactory(new PropertyValueFactory<>("producto"));
		tabPrecio.setCellValueFactory(new PropertyValueFactory<>("precio"));
		tabCantidad.setCellValueFactory(new PropertyValueFactory<>("cantidad"));
		tabSubtotal.setCellValueFactory(new PropertyValueFactory<>("subtotal"));

		tableSell.setItems(carShop);
	}

	private void vaciar() {
		txtCantidad.setText("0");
		txtCodigo.setText(null);
		txtDisponibles.setText(null);
		txtPrecio.setText("0.0");
		txtProducto.setText(null);
		txtSubtotal.setText("0.0");

	}

	public void limpiarLista() {
		carShop.clear();
		llenarTabla();
		totalPagar = 0;
	}

	public void subtotal() {
		double sub = 0;
		int cant = 0;
		double precio = 0;
		int disponibles = 0;
		if ((txtCantidad.getText().toString().trim()).equals("")
				|| txtDisponibles.getText().toString().trim().equals("")) {
			cant = 0;

		} else {
			cant = Integer.parseInt(txtCantidad.getText().toString().trim());
			precio = Double.parseDouble(txtPrecio.getText().toString().trim());
			disponibles = Integer.parseInt(txtDisponibles.getText().toString().trim());

			if (cant < 0 || cant > disponibles) {
				Notification.sendError("Rectifica tu cantidad\nDebes escojer entre 1 y " + disponibles);
				txtCantidad.setText(disponibles + "");
				txtCantidad.requestFocus();
			} else {
				sub = cant * precio;
				txtSubtotal.setText(sub + "");
			}
		}
	}

}
