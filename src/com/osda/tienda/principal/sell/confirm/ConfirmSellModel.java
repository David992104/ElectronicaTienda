package com.osda.tienda.principal.sell.confirm;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.osda.tienda.dbconection.ClientCRUD;
import com.osda.tienda.dbconection.SellCRUD;
import com.osda.tienda.notification.Notification;
import com.osda.tienda.principal.sell.SellModel;

import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class ConfirmSellModel {
	public static double precio;
	public static int productos;
	public static ObservableList<SellModel> lista;
	public static String usuario;

	public ConfirmSellModel(double precio, int productos, ObservableList<SellModel> lista, String usuario) {
		setPrecio(precio);
		setProductos(productos);
		setLista(lista);
		setUsuario(usuario);

	}

	public ConfirmSellModel() {
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		ConfirmSellModel.precio = precio;
	}

	public int getProductos() {
		return productos;
	}

	public void setProductos(int productos) {
		ConfirmSellModel.productos = productos;
	}

	public ObservableList<SellModel> getLista() {
		return lista;
	}

	public void setLista(ObservableList<SellModel> lista) {
		this.lista = lista;
	}

	public String getUsuario() {
		System.out.println(this.usuario);
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public void vender(int cliente) {
		if (new SellCRUD().insertarCompra(getLista(), cliente, usuario)) {
			Notification.showMessage("Vendido");
		}
	}
	
	public String[] buscarCliente(int codigo) {
		ResultSet result = new ClientCRUD().buscarCliente(codigo);
		String cliente[] = new String[4];
		try {
			while (result.next()) {

				if (result.getString(1).equals("0") || result.getString(1).equals("00")) {
					Notification.showMessage("El cliente no existe");
				} else {
					cliente[0] = result.getString(1);
					cliente[1] = result.getString(2);
					cliente[2] = result.getString(3);
					cliente[3] = result.getString(4);
				}
			}
			ClientCRUD.closeConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cliente;
	}

	public void pasarValores(double totalPagar, int productos, ObservableList<SellModel> lista, String usuario) {
		new ConfirmSellModel(totalPagar, productos, lista, usuario);
	}

	public void confirmarVenta(double precio, int productos, ObservableList<SellModel> lista, String usuario) {
		new ConfirmSellModel(precio, productos, lista, usuario);
	}

	public void showWindow() {
		Parent root;
		try {
			root = FXMLLoader
					.load(getClass().getResource("/com/osda/tienda/principal/sell/confirm/ConfirmSellView.fxml"));

			Scene scene = new Scene(root);
			Stage stage = new Stage();
			stage.setScene(scene);
			stage.setTitle("Principal");
			stage.centerOnScreen();
			stage.toFront();
			stage.show();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
