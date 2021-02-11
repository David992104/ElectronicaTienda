package com.osda.tienda.principal.addProducto;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.dbconection.ProductoCRUD;
import com.osda.tienda.notification.Notification;

import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;

public class AddProdModel {

	public ObservableList<Producto> llenarTabla() throws SQLException {
		return new ProductoCRUD().getProductos();
	}

	public boolean addProduct(String codigoB, String descripccion, double precio, int existencias)
			throws ClassNotFoundException, SQLException {

		String result = "";

		ConnectionDB.getConnection("Desde añadir producto modelo");
		ResultSet prodMessage = new ProductoCRUD().addProducto(codigoB, descripccion, precio, existencias);
		while (prodMessage.next()) {
			result = prodMessage.getString(1);
		}
		ConnectionDB.closeConnection();

		if (result.equals("Error")) {
			System.out.println("El precio y la Existencia no puede ser menor a cero");
		}
		if (result.equals("prodExistente")) {
			Notification.sendError("El producto ya existe");
			return false;
		} else {
			if ((JOptionPane.showConfirmDialog(null, "Confirmar producto") == 0)) {
				Notification.showMessage("El producto " + descripccion + " fue añadido");
				new ProductoCRUD().commit();
				return true;				
			}else {
				Notification.showMessage("El producto " + descripccion + " no fue añadido");
				new ProductoCRUD().rollback();
				return false;				
			}
		}
	}

	public void showWindow(TabPane tabPane) {
		FXMLLoader loader = new FXMLLoader(
				getClass().getResource("/com/osda/tienda/principal/addProducto/AddProdView.fxml"));
		AnchorPane window = null;
		try {
			window = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}

		Tab tab = new Tab();
		tab.setText("Añadir Producto");
		tab.setContent(window);
		tab.setClosable(true);
		tabPane.getTabs().add(tab);
		tabPane.getSelectionModel().select(tab);
	}
}